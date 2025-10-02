# Master Thesis

This repository contains the LaTeX source files for a Master's thesis.

## Structure

- `thesis.tex` - Main thesis document
- `abstract.tex` - Abstract
- `acknowledgments.tex` - Acknowledgments
- `chapters/` - Directory containing individual chapter files
  - `chapter1.tex` - Introduction
  - `chapter2.tex` - Literature Review
  - `chapter3.tex` - Methodology
  - `chapter4.tex` - Results and Analysis
  - `chapter5.tex` - Conclusion and Future Work
  - `appendix.tex` - Appendices
- `references.bib` - Bibliography database

## Building the Thesis

### Prerequisites

You need a LaTeX distribution installed on your system:
- **Windows**: [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)
- **macOS**: [MacTeX](https://www.tug.org/mactex/)
- **Linux**: TeX Live (usually available in package managers)

### Compile the Thesis

#### Using Make (recommended)

The easiest way to build the thesis is using the provided Makefile:

```bash
make
```

To clean auxiliary files:

```bash
make clean
```

To clean all files including the PDF:

```bash
make cleanall
```

#### Manual Compilation

Alternatively, you can compile manually:

```bash
pdflatex thesis.tex
bibtex thesis
pdflatex thesis.tex
pdflatex thesis.tex
```

Or use `latexmk` for automatic compilation:

```bash
latexmk -pdf thesis.tex
```

### Clean Build Files

To remove auxiliary files:

```bash
latexmk -c
```

To remove all generated files including the PDF:

```bash
latexmk -C
```

## Customization

1. Edit the title page information in `thesis.tex`
2. Update `abstract.tex` with your thesis abstract
3. Modify `acknowledgments.tex` with your acknowledgments
4. Fill in the content of each chapter in the `chapters/` directory
5. Add your references to `references.bib`

## License

This template is provided as-is for academic use.