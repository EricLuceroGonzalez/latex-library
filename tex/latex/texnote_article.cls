% ----------------------------------------------------------------
% Clase personalizada: texnote_article.cls (Mejorada)
% ----------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{texnote_article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\DeclareOption{nojustify}{\AtBeginDocument{\raggedright}}

\ProcessOptions\relax
\LoadClass[article]{memoir}
% ================================================================
% CONFIGURACIÓN DEL IDIOMA Y TIPOGRAFÍA
% ================================================================

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
% Soporte multilingüe: Inglés y Español
\RequirePackage[english, spanish, es-nodecimaldot, es-tabla]{babel}

\RequirePackage{kpfonts}
\RequirePackage{microtype} % Optimiza el espaciado y evita cortes feos
\RequirePackage{csquotes}
\RequirePackage{fontawesome5}
\RequirePackage{smartdiagram}
\RequirePackage{parskip}
\RequirePackage{ragged2e}
\usesmartdiagramlibrary{additions}

\RequirePackage{color_definitions}
\RequirePackage{Boxes_Draws}[March_2025]
\RequirePackage{TikZ_Draws}
\RequirePackage{command_definitions}
\RequirePackage{texnote_style}

\hyphenpenalty=1000
\exhyphenpenalty=1000
\tolerance=1000

% ================================================================
% PAQUETES MATEMÁTICOS
% ================================================================
\RequirePackage{amsmath, amsthm, amssymb, mathrsfs}

% ================================================================
% DISEÑO Y LAYOUT
% ================================================================
\RequirePackage{geometry}
\geometry{
    left=1.75cm,   % Reducido desde 2.54cm
    right=1.75cm,  % Reducido desde 2.54cm
    top=2.25cm,
    bottom=2.05cm,
    headheight=18pt % A
}

\RequirePackage{multicol, multirow, graphicx}

% RECOMENDACIÓN: Usa rutas relativas para evitar errores en otros PCs
\graphicspath{{../resources}
        {/Users/ericlucero/Documents/Academic/LaTeX-UPM/TeXNotes/resources}
        {/Users/ericlucero/Documents/Academic/LaTeX-UPM/media/}
}

\RequirePackage{subcaption}
\RequirePackage{xcolor}
\RequirePackage{tcolorbox}
\tcbset{colback=gray!10, colframe=black, arc=3mm}

\setlength{\parindent}{0em}
% ================================================================
% LISTAS Y PIES DE PÁGINA
% ================================================================
\RequirePackage[multiple]{footmisc}
\RequirePackage{enumitem}
\setlist[itemize]{font=\color{colorA}}
\setlist[enumerate]{font=\bfseries\color{colorA}}
% ================================================================
% TABLAS Y OTROS
% ================================================================
\RequirePackage{colortbl, tablefootnote, threeparttable}
\RequirePackage{tabularx}
\RequirePackage{booktabs}
% ================================================================
% BIBLIOGRAFÍA (BIBLATEX + BIBER)
% ================================================================
\RequirePackage[
    backend=biber,       % Motor de procesamiento
    mincitenames=1,
    maxcitenames=1,      % Muestra hasta 2 autores antes de poner "et al."
    style=authoryear,
    uniquelist=false,    % Omite ambigüedades (mismo apellido)
    sorting=none,
    url=false,
    date=year
]{biblatex}
\addbibresource{theBibliography.bib}
\addbibresource{metaheuristics.bib} % Archivo de bibliografía
\addbibresource{ATCO.bib} % Archivo de bibliografía
% \addbibresource{../bibliography.bib} % Archivo de bibliografía

% Traducción de etiquetas
\DefineBibliographyStrings{spanish}{
    andothers = {\textit{et\addabbrvspace al\adddot}},
    and = {y},
}

% Espaciado entre entradas de la bibliografía
\setlength{\bibitemsep}{0.6em}
% ================================================================
% HIPERVÍNCULOS Y REFERENCIAS (SIEMPRE AL FINAL)
% ================================================================
\RequirePackage{xr-hyper}
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=colorA,
    urlcolor=colorA,
    citecolor=colorA
}

% Cleveref SIEMPRE después de hyperref
\RequirePackage[capitalize,nameinlink,noabbrev]{cleveref}
\RequirePackage{fnpct}
% \makepagenote % <-- para silenciar la advertencia de fnpct
\RequirePackage{lipsum}
\RequirePackage{titleps}
