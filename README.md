# 📚 Personal TeXMF Assets

![LaTeX](https://img.shields.io/badge/Language-LaTeX-008080?style=for-the-badge&logo=latex&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-macOS-000000?style=for-the-badge&logo=apple&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)
![Maintenance](https://img.shields.io/badge/Maintained-Yes-green.svg?style=for-the-badge)

A centralized repository for managing personal LaTeX packages, styles, and bibliography files. This repository is designed to be cloned into a user directory (e.g., `~/Documents`) and symbolically linked to the system's local TeXMF tree (`~/Library/texmf`) on macOS.

## 📂 Repository Structure

The folder structure follows the **TDS (TeX Directory Structure)** standard to ensure compatibility with TeX Live and MacTeX.

```text
.
├── bibtex/
│   └── bib/          # Global bibliography files (.bib)
├── tex/
│   └── latex/        # Custom packages (.sty) and classes (.cls)
├── doc/              # Documentation for custom packages
├── .gitignore        # Ignores compilation logs and temp files
└── README.md
```

## 🚀 Installation & Setup

To use these assets across all your LaTeX projects without manually copying files, follow the **Symlink Method**.

### 1. Clone the Repository

Clone this repo to a permanent location (e.g., your Projects or Documents folder). Do **not** clone directly into `~/Library`.

```bash
git clone https://github.com/EricLuceroGonzalez/latex-library.git ~/Documents/tex-assets
cd ~/Documents/tex-assets
```

### 2. Backup Existing TeXMF (If applicable)

Check if you already have a local TeXMF folder. If it exists, back it up or merge it.

```bash
# Check if exists
ls -d ~/Library/texmf

# If it exists, move it to backup
mv ~/Library/texmf ~/Library/texmf_backup
```

### 3. Create the Symbolic Link

This links your Git repository to the location where macOS looks for LaTeX files.

```bash
# Ensure you are inside the cloned repo directory
ln -s "$(pwd)" ~/Library/texmf
```

### 4. Verify the Link

Check that the system recognizes the link:

```bash
ls -l ~/Library/texmf
# Output should look like:
# texmf -> /Users/yourname/Documents/tex-assets
```

## 🛠 Usage

Once linked, you can call your custom packages from **any** `.tex` project on your machine, just like standard libraries.

**Example:**
If you have a file at `tex/latex/mystyle/custom.sty`:

```latex
\documentclass{article}
\usepackage{custom} % It loads automatically!

\begin{document}
    Hello World using my custom styles.
\end{document}
```

## 📦 Updating Assets

Since this is a Git repository, managing your styles is simple:

1. **Edit** your `.sty` or `.bib` files in `~/Documents/tex-assets`.
2. **Commit** and **Push** your changes.
3. Changes are immediately available to your local LaTeX compiler.

```bash
git add .
git commit -m "feat: added new IEEE bibliography format"
git push origin main
```

## ⚡️ Workflow & Synchronization
Because this repository uses a `symbolic link`, there is no need to manually copy files or run synchronization scripts between your Git folder and the system.

Instant Updates: When you edit a `.sty` or `.bib` file in this repository, LaTeX sees the changes immediately upon the next compilation.

No `texhash` required: Unlike the system-wide root, the user TeX tree (~/Library/texmf) is scanned dynamically by MacTeX. You generally do not need to run database update commands. I personally use TexLive.

### Troubleshooting New Files

In very rare cases, if you add a new file and LaTeX reports `File not found`, you can force a database refresh:

```bash
texhash ~/Library/texmf
```

## 📝 License

Distributed under the MIT License. See `LICENSE` for more information.