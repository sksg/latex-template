\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coursenotes-sta}[2021/01/13 Computer Vision Course Notes Standalone LaTeX class]

\LoadClass[10pt,oneside,tikz]{standalone}

\def\RequireSubpackage#1{%
    \RequirePackage{coursenotes-#1}
}

\RequireSubpackage{math}
\RequireSubpackage{font}
\RequireSubpackage{colors}
\RequireSubpackage{graphics}

\RequirePackage{microtype}
