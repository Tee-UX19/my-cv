# Timothy-Joseph Godwin CV

A professional LaTeX-based CV optimized for ATS (Applicant Tracking Systems) compliance and visual appeal, built with a custom RenderCV-style template.

## Features

✅ **ATS-Optimized**: Clean, machine-readable formatting  
✅ **Professional Layout**: Consistent typography with Charter font  
✅ **One-Page Design**: Optimized for space efficiency  
✅ **Modern Structure**: Company/institution names prominently displayed  
✅ **Technical Skills**: Comprehensive data analysis and development capabilities

## Prerequisites

To compile this CV, you'll need:

1. **LaTeX Distribution**:

   - **Windows**: [MiKTeX](https://miktex.org/) (recommended)
   - **macOS**: [MacTeX](https://www.tug.org/mactex/)
   - **Linux**: Install `texlive-full` package

2. **VS Code Extensions** (recommended):
   - LaTeX Workshop by James Yu

## Quick Start

### Option 1: PowerShell Script (Recommended)

```powershell
# Navigate to the CV directory
cd "path\to\my-cv"

# Compile the CV
.\build-cv.ps1
```

### Option 2: VS Code Integration

1. Open `Timothy-Joseph CV.tex` in VS Code
2. Press `Ctrl+Alt+B` (or `Cmd+Alt+B` on Mac) to build
3. The PDF will automatically open in VS Code's preview

### Manual Compilation

If preferred, compile directly with:

```bash
pdflatex "Timothy-Joseph CV.tex"
```

## Customizing Your CV

### Adding New Experiences

Use the `twocolentry` environment for experience entries:

```latex
\begin{twocolentry}{
    Start Date -- End Date
}{
    \textbf{Job Title} \\ Company Name
}
    \begin{highlights}
        \item Achievement or responsibility description
        \item Another key accomplishment
    \end{highlights}
\end{twocolentry}
```

### Adding Skills

Use the `onecolentry` environment for skills sections:

```latex
\begin{onecolentry}
    \textbf{Category:} Skill 1, Skill 2, Skill 3
\end{onecolentry}
```

### Template Features

✅ **Professional RenderCV-style formatting**  
✅ **ATS-compliant structure**  
✅ **Clean typography with Charter fonts**  
✅ **Consistent spacing and alignment**  
✅ **Easy-to-modify content sections**  
✅ **Automated build process**

## Repository Structure

```
my-cv/
├── Timothy-Joseph CV.tex    # Main CV source file
├── Timothy-Joseph CV.pdf    # Generated PDF (after compilation)
├── build-cv.ps1            # PowerShell build script
├── README.md               # This documentation
├── .gitignore              # Git ignore patterns
└── .vscode/                # VS Code LaTeX Workshop settings
```

## Building Your CV

### Method 1: Automated Script (Recommended)

```powershell
.\build-cv.ps1
```

### Method 2: VS Code LaTeX Workshop

1. Open `Timothy-Joseph CV.tex` in VS Code
2. Press `Ctrl+Alt+B` to build
3. View the generated PDF in the preview pane

### Method 3: Manual Command Line

```powershell
pdflatex "Timothy-Joseph CV.tex"
```

## CV Maintenance Tips

### Content Updates

- Edit the `.tex` file directly in VS Code with LaTeX syntax highlighting
- Use the `twocolentry` and `onecolentry` environments for consistent formatting
- Remember to escape special characters (use `\&` instead of `&`)

### Font Consistency

- The template uses Charter fonts throughout
- Header uses `\bfseries` for consistent bold formatting
- Body text maintains readable typography standards

### ATS Optimization Features

- Standard section structure (Education, Experience, Skills)
- Clean, readable formatting without graphics
- Proper whitespace and hierarchy
- Professional typography that scans well
- Keywords integrated naturally into content

## Development Workflow

This repository uses Git for version control, enabling you to:

- Track changes and revisions over time
- Maintain multiple CV versions for different roles
- Collaborate with others for feedback and reviews
- Backup your work and sync across devices

## Advanced Usage

### Creating Role-Specific Versions

For different positions, copy and customize:

```powershell
Copy-Item "Timothy-Joseph CV.tex" "Timothy-Joseph CV-Data-Analyst.tex"
Copy-Item "Timothy-Joseph CV.tex" "Timothy-Joseph CV-Software-Engineer.tex"
```

### Custom LaTeX Environments

The template includes custom environments you can extend:

- `twocolentry`: Two-column layout for experience/education
- `onecolentry`: Single-column layout for skills/summary
- `highlights`: Bulleted list within entries

### VS Code LaTeX Features

- Real-time compilation on save
- Integrated PDF preview
- Syntax highlighting and autocomplete
- Error detection and navigation
- Built-in spell checking

## Troubleshooting

**Common Issues:**

- **Font errors**: Ensure MiKTeX has Charter fonts installed
- **Compilation failures**: Check VS Code's LaTeX Workshop output panel
- **Special characters**: Use LaTeX escaping (e.g., `\&` for ampersands)
- **Build script issues**: Run PowerShell as Administrator if needed

**Getting Help:**

- VS Code LaTeX Workshop documentation
- LaTeX Stack Exchange for formatting questions
- MiKTeX documentation for package management
- **PDF not updating**: Try `Ctrl+Alt+C` to clean auxiliary files

## Contact

For questions about this CV template:

- Email: tj.godwin1904@gmail.com
- LinkedIn: Timothy-Joseph Godwin
- GitHub: Tee-UX19
