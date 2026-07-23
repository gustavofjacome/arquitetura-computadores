from PIL import Image

# ==========================================
# CONFIGURAÇÕES
# ==========================================

INPUT_IMAGE = "CENARIO2-export.png"
OUTPUT_FILE = "CENARIO2-export.asm"

BASE_LABEL = "cenario"

# Valor usado para transparência
TRANSPARENT_COLOR = "0xFFFFFFFF"

# ==========================================
# ABRIR IMAGEM
# ==========================================

img = Image.open(INPUT_IMAGE).convert("RGBA")

width, height = img.size

# ==========================================
# GERAR ASM
# ==========================================

with open(OUTPUT_FILE, "w") as f:

    # Cabeçalho
    f.write(".data\n\n")

    f.write(f"{BASE_LABEL}_width: .word {width}\n")
    f.write(f"{BASE_LABEL}_height: .word {height}\n\n")

    # Dados da imagem
    f.write(f"{BASE_LABEL}:\n")

    # Percorre linhas
    for y in range(height):

        # Comentário da linha
        f.write(f"\n    # linha {y}\n")

        row_pixels = []

        # Percorre colunas
        for x in range(width):

            r, g, b, a = img.getpixel((x, y))

            # Transparência
            if a == 0:
                row_pixels.append(TRANSPARENT_COLOR)

            else:
                # RGB -> 0x00RRGGBB
                hex_color = (r << 16) | (g << 8) | b
                row_pixels.append(f"0x{hex_color:06X}")

        # Escreve linha compactada
        f.write("    .word ")
        f.write(", ".join(row_pixels))
        f.write("\n")

# ==========================================
# FINALIZAÇÃO
# ==========================================

total_pixels = width * height

print("===================================")
print("ASM gerado com sucesso!")
print("===================================")
print(f"Imagem: {INPUT_IMAGE}")
print(f"Saída : {OUTPUT_FILE}")
print(f"Largura : {width}")
print(f"Altura  : {height}")
print(f"Pixels  : {total_pixels}")
print("===================================")