# Mantu's Resume

This repository contains the source code for my resume, built using [RenderCV](https://github.com/rendercv/rendercv).

RenderCV takes a YAML input file (`Mantu_CV.yaml`) and generates a professional, LaTeX-formatted PDF.

## � Resume PDF

- **[View/Download Resume](https://drive.google.com/file/d/1jxb3ovWMGDjPyQEG2GBNIumikrnX5vBJ/view?usp=drive_link)**: Latest version of my resume (Google Drive)

## �🚀 Quick Start

### Installation

**Using Homebrew (Recommended for macOS):**

1. Install Python:

   ```bash
   brew install python
   ```

2. Install `pipx`:

   ```bash
   brew install pipx
   pipx ensurepath
   ```

3. Install RenderCV:
   ```bash
   pipx install "rendercv[full]"
   ```

### Rendering the Resume

To generate the PDF from the YAML file:

```bash
rendercv render Mantu_CV.yaml
```

This will create a `rendercv_output` directory containing:

- `Mantu_CV.pdf`: The final resume.
- `Mantu_CV.tex`: The generated LaTeX source.
- `Mantu_CV_CV.md`: A markdown version (optional).

### Live Editing

To automatically re-render the PDF whenever you save changes to the YAML file:

```bash
rendercv render --watch Mantu_CV.yaml
```

## 📄 Source File

- **[Mantu_CV.yaml](./Mantu_CV.yaml)**: The main data file containing all resume content (Experience, Projects, Education, etc.).

## 🛠️ Built With

- [RenderCV](https://docs.rendercv.com/) - LaTeX CV generator from YAML
