# Makefile for LaTeX CV compilation

# Default target
all: cv cv-modern

# Compile main CV
cv: cv.tex
	pdflatex cv.tex
	@echo "CV compiled successfully!"

# Compile modern CV
cv-modern: cv-modern.tex
	pdflatex cv-modern.tex
	@echo "Modern CV compiled successfully!"

# Clean auxiliary files
clean:
	del /f *.aux *.log *.out *.synctex.gz *.fls *.fdb_latexmk 2>nul || echo "Clean completed"

# Clean everything including PDFs
cleanall: clean
	del /f *.pdf 2>nul || echo "All files cleaned"

# Watch for changes and auto-compile (requires LaTeX Workshop in VS Code)
watch:
	@echo "Use Ctrl+Alt+B in VS Code to build, or save the .tex file for auto-compilation"

# Help
help:
	@echo "Available targets:"
	@echo "  all        - Compile both CV versions"
	@echo "  cv         - Compile main CV (cv.tex)"
	@echo "  cv-modern  - Compile modern CV (cv-modern.tex)"
	@echo "  clean      - Remove auxiliary files"
	@echo "  cleanall   - Remove all generated files"
	@echo "  help       - Show this help message"

.PHONY: all cv cv-modern clean cleanall watch help
