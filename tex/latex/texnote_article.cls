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
\RequirePackage[english, spanish, es-nodecimaldot, es-tabla,es-noquoting]{babel}
\RequirePackage{kpfonts}
\RequirePackage{microtype} % Optimiza el espaciado y evita cortes feos
\RequirePackage{csquotes}
\RequirePackage{fontawesome5}
\RequirePackage{smartdiagram}
\usesmartdiagramlibrary{additions}
\RequirePackage{parskip}
\RequirePackage{ragged2e}

\RequirePackage{color_definitions}
\RequirePackage{Boxes_Draws}[March_2025]
\RequirePackage{TikZ_Draws}
\RequirePackage{command_definitions}
\RequirePackage{texnote_metadata}
% \RequirePackage{texnote_style}
\RequirePackage{texnote_acronyms}
\RequirePackage{texnote_glossaries}
\RequirePackage{texnote_algorithms}

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
    left=2.4cm,   % Reducido desde 2.54cm
    right=2.4cm,  % Reducido desde 2.54cm
    top=2.25cm,
    bottom=2.05cm,
    headheight=18pt % A
}

\RequirePackage{multicol, multirow, graphicx}

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
    maxcitenames=2,      % Muestra hasta 2 autores antes de poner "et al."
    mincitenames=2,
    maxbibnames=10,
    minbibnames=1,
    % style=ieee,
    % style=authoryear,
    uniquelist=false,    % Omite ambigüedades (mismo apellido)
    sortcites=false,    % Mantiene las citas en el orden que las escribes en el comando
    % sorting=none,
    url=false,
    date=year,
    % UPM config
    % backend=biber,% UPM config
    style=apa,% UPM config
    sorting=nyt,% UPM config
    doi=true,% UPM config
    % url=false,% UPM config
    isbn=false,% UPM config
    backref=false % UPM config
]{biblatex}
\addbibresource{theBibliography.bib}
\addbibresource{metaheuristics.bib} % Archivo de bibliografía
\addbibresource{ATCO.bib} % Archivo de bibliografía
% \addbibresource{../bibliography.bib} % Archivo de bibliografía

% 1. FORZAR LA "Y" EN TODOS LOS CONTEXTOS (Cita, Paréntesis y Bibliografía)
\AtBeginDocument{%
    % Cambia el separador en modo texto
    \DeclareDelimFormat{finalnamedelim}{\addspace y\addspace}%
    % Cambia el separador específicamente dentro de paréntesis (parencite)
    \DeclareDelimFormat[parencite]{finalnamedelim}{\addspace y\addspace}%
    % Cambia el separador en la lista de referencias final
    \DeclareDelimFormat[bib]{finalnamedelim}{\addspace y\addspace}%
}

\DefineBibliographyStrings{spanish}{
    andothers = {\textit{et\addabbrvspace al\adddot}},
    and = {y},
}
\AtBeginBibliography{%
    \renewcommand*{\finalnamedelim}{\addspace y\addspace}%
}
% Espaciado entre entradas de la bibliografía
\setlength{\bibitemsep}{0.6em}
% ================================================================
% HIPERVÍNCULOS Y REFERENCIAS (SIEMPRE AL FINAL)
% ================================================================
\RequirePackage{xr-hyper}
\RequirePackage{hyperref}
\hypersetup{
    % --- Visual ---
    colorlinks=true,       % true: colorea los textos y oculta los recuadros
    filecolor=colorD,      % color de enlaces a archivos locales
    urlcolor=colorA,       % color de enlaces web (URLs y DOIs)
    breaklinks=true,       % Permite que los enlaces largos se rompan en varias líneas
    linkcolor=colorA,      % color de enlaces internos (índice, figuras)
    citecolor=colorA       % color de citas a la bibliografía
}

% Cleveref SIEMPRE después de hyperref
\RequirePackage[capitalize,nameinlink,noabbrev]{cleveref}
\RequirePackage{fnpct}
% \makepagenote % <-- para silenciar la advertencia de fnpct
\RequirePackage{lipsum}
\RequirePackage{bm}
% \RequirePackage{titleps} % No compatible con memoir class


