# Timothy-Joseph Godwin CV

A professional LaTeX-based CV optimized for ATS (Applicant Tracking Systems) compliance and visual appeal.

## Prerequisites

To compile this CV, you'll need:

1. **LaTeX Distribution**:

   - **Windows**: [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)
   - **macOS**: [MacTeX](https://www.tug.org/mactex/)
   - **Linux**: Install `texlive-full` package

2. **VS Code Extensions** (already installed):
   - LaTeX Workshop by James Yu

## Quick Start

1. **Install LaTeX**: Download and install a LaTeX distribution for your OS
2. **Open in VS Code**: The LaTeX Workshop extension should auto-configure
3. **Compile**: Press `Ctrl+Alt+B` (or `Cmd+Alt+B` on Mac) to build the PDF
4. **View**: The PDF will automatically open in VS Code's preview

## Customization Guide

### Personal Information

Edit the personal details section at the top of `cv.tex`:

```latex
\firstname{Timothy-Joseph}
\familyname{Godwin}
\title{Your Title Here}
\phone[mobile]{+44 7961 585 772}
\email{tj.godwin1904@gmail.com}
```

### Adding New Sections

Use these commands to add content:

- **Experience**: `\cventry{dates}{title}{company}{location}{grade}{description}`
- **Skills**: `\cvitem{category}{skills list}`
- **Simple entries**: `\cvlistitem{item description}`

### Styling Options

Change the CV style by modifying:

```latex
\moderncvstyle{classic}  % Options: classic, casual, banking, oldstyle, fancy
\moderncvcolor{blue}     % Options: blue, orange, green, red, purple, grey, black
```

### ATS Optimization Features

✅ **Clean, readable fonts**  
✅ **Standard section headings**  
✅ **Logical information hierarchy**  
✅ **No complex graphics or tables**  
✅ **Proper use of whitespace**  
✅ **Keyword-rich content**

## File Structure

```
my-cv/
├── cv.tex              # Main CV file
├── cv.pdf              # Generated PDF (after compilation)
├── README.md           # This file
└── .vscode/            # VS Code configuration (auto-generated)
```

## Building the CV

### Method 1: VS Code (Recommended)

1. Open `cv.tex` in VS Code
2. Press `Ctrl+Alt+B` to build
3. View the generated PDF in the preview pane

### Method 2: Command Line

```bash
# Navigate to the CV directory
cd "c:\Users\Timothy J Godwin\repos\my-cv"

# Compile the LaTeX file
pdflatex cv.tex
```

## Tips for ATS Compliance

1. **Use standard section headers**: Education, Experience, Skills, etc.
2. **Include relevant keywords** from job descriptions
3. **Use simple, clean formatting**
4. **Avoid graphics, images, or complex tables**
5. **Use standard fonts** (the template uses Computer Modern)
6. **Save as PDF** for consistent formatting

## Version Control

This CV is version-controlled with Git, making it easy to:

- Track changes over time
- Maintain multiple versions for different roles
- Collaborate with others for feedback
- Backup your work

## Advanced Features

### Multiple CV Versions

Create different versions for different roles:

```bash
cp cv.tex cv-software-engineer.tex
cp cv.tex cv-data-scientist.tex
```

### Custom Commands

Add custom commands for repeated formatting:

```latex
\newcommand{\skill}[2]{\cvitem{#1}{\textbf{#2}}}
```

## Troubleshooting

**Common Issues:**

- **Missing packages**: MiKTeX will auto-install, or use `tlmgr install <package>`
- **Compilation errors**: Check the LaTeX Workshop output panel in VS Code
- **PDF not updating**: Try `Ctrl+Alt+C` to clean auxiliary files

## Contact

For questions about this CV template:

- Email: tj.godwin1904@gmail.com
- LinkedIn: Timothy-Joseph Godwin
- GitHub: Tee-UX19
