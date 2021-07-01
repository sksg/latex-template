\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coursenotes-handout}[2021/01/13 Computer Vision Course Notes LaTeX class]

\RequirePackage{kvoptions}

\SetupKeyvalOptions{family=coursenotes,prefix=@cn@}

\DeclareBoolOption[true]{mathdefs}
\DeclareBoolOption[true]{font}
\DeclareBoolOption[true]{colordefs}
\DeclareBoolOption[true]{graphicdefs}
\DeclareBoolOption[true]{frames}
\DeclareBoolOption[true]{standalone}
\DeclareBoolOption[true]{maketitle}
\DeclareBoolOption[false]{oneandhalfcolumn}

\ProcessKeyvalOptions*

\LoadClass{article}
\def\RequireSubpackageIf#1#2{%
    \csname if@cn@#1\endcsname
        \RequirePackage{coursenotes-#2}
    \fi
}

\RequireSubpackageIf{mathdefs}{math}
\RequireSubpackageIf{font}{font}
\RequireSubpackageIf{colordefs}{colors}
\RequireSubpackageIf{graphicdefs}{graphics}
\RequireSubpackageIf{frames}{exp-exc-sol}
\RequireSubpackageIf{standalone}{standalone}
\RequireSubpackageIf{maketitle}{title}
\RequireSubpackageIf{oneandhalfcolumn}{oneandhalfcolumn}

\RequirePackage{microtype,hyperref}
\RequirePackage[noabbrev]{cleveref}
\RequirePackage[style=verbose-note]{biblatex}

\hypersetup{
  breaklinks=true,
  colorlinks,
  unicode,
  pdfdisplaydoctitle,
  bookmarksdepth=section,
  linkcolor={red!50!black},
  citecolor={blue!50!black},
  urlcolor={blue!80!black}
}

\DeclareFieldFormat{urldate}{%
    (Accessed \thefield{urlday}\addspace%
    \mkbibmonth{\thefield{urlmonth}}\addspace%
    \thefield{urlyear}\isdot)%
}

