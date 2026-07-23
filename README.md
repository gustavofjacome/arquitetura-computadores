<p align="center">
  <img src="https://img.shields.io/badge/MIPS-00758F?style=for-the-badge&logoColor=white"/>
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"/>
</p>

<h1 align="center"> Arquitetura de Computadores</h1>
<p align="center">
  <b>Exercicios em assembly MIPS</b><br>
  <i>Arquitetura de Computadores — 2026.1 — IFRN - CNAT</i>
</p>

---

## Sobre

Exercicios e projetos desenvolvidos na disciplina de **Arquitetura de Computadores** utilizando **Assembly MIPS**. Inclui desde operacoes basicas (Lista 01) ate manipulacao de arrays (Lista 05) e um projeto de renderizacao de imagens no bitmap display.

---

## Estrutura

```
arquitetura-computadores/
├── listas/
│   ├── lista01/          # 20 exercicios basicos (aritmetica)
│   ├── lista02/          # 11 exercicios com arrays
│   ├── lista03/          # 5 exercicios com condicionais
│   ├── lista04/          # 3 exercicios com lacos
│   └── lista05/          # 1 exercicio de array com acesso direto
├── projetos/
│   └── cenario/          # Renderizacao de cenario no Bitmap Display
├── ferramentas/
│   └── converter.py      # Conversor PNG → .asm (pixel data)
├── .gitignore
└── README.md
```

---

## Projeto Cenario

Renderiza imagens (256x128 pixels) no **Bitmap Display** do MARS MIPS simulador. O arquivo `main.asm` inclui os dados de pixel e desenha na tela.

### Como usar

1. Abra o **MARS MIPS Simulator**
2. Configure o Bitmap Display: 256x128, base address `0x10010000`
3. Abra e execute `projetos/cenario/main.asm` ou qualquer arquivo das listas
