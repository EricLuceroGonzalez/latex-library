% ----------------------------------------------------------------
% Clase personalizada: texnote_article.cls (Mejorada)
% ----------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{texnote_article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\DeclareOption{nojustify}{\AtBeginDocument{\raggedright}}

\ProcessOptions\relax
\LoadClass{extarticle}

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
\usesmartdiagramlibrary{additions}

\RequirePackage{color_definitions}
\RequirePackage{Boxes_Draws}[March_2025]
\RequirePackage{TikZ_Draws}
\RequirePackage{command_definitions}

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
\geometry{left=2.54cm, right=2.54cm, top=2.5cm, bottom=2.05cm}

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
% FORMATO DE TÍTULOS
% ================================================================
\RequirePackage{titlesec}
\titleformat{\section}{\Large\bfseries\color{colorA}}{}{0pt}{\thesection \hspace{0.25em}}
\titleformat{\subsection}{\large\bfseries\color{gray!50!black}}{}{0pt}{\thesubsection \hspace{0.25em}}
\titlespacing{\section}{0pt}{*1}{*0.5}

% ================================================================
% LISTAS Y PIES DE PÁGINA
% ================================================================
\RequirePackage[multiple]{footmisc}
\RequirePackage{enumitem}
\setlist[itemize]{font=\color{colorA}}
\setlist[enumerate]{font=\bfseries\color{colorA}}

\makeatletter
\newcommand{\titulo}{\@title}
\makeatother

\RequirePackage{titleps}
\newpagestyle{main}[\large]{
    \setheadrule{.55pt}%
    \sethead[\huge\colorbox{colorA}{\color{white}{\thepage}}]
    [\titulo]
    [\colorbox{colorA}{\fecha}]
    {\color{colorA}\fecha}
    {}
    {\colorbox{colorA}{\color{white}{\thepage}}}
}
\pagestyle{main}

% ================================================================
% BIBLIOGRAFÍA (BIBLATEX + BIBER)
% ================================================================
\RequirePackage[
    backend=biber,       % Motor de procesamiento
    maxcitenames=2,      % Muestra hasta 2 autores antes de poner "et al."
    mincitenames=1,
    style=authoryear,
    sorting=none,
    url=false,
    date=year
]{biblatex}
\addbibresource{theBibliography.bib}
\addbibresource{metaheuristics.bib} % Archivo de bibliografía
% \addbibresource{../bibliography.bib} % Archivo de bibliografía

% Traducción de etiquetas
\DefineBibliographyStrings{spanish}{
    andothers = {\textit{et\addabbrvspace al\adddot}},
    and = {y},
}

% Espaciado entre entradas de la bibliografía
\setlength{\bibitemsep}{0.6em}

% ================================================================
% TABLAS Y OTROS
% ================================================================
\RequirePackage{colortbl, tablefootnote, threeparttable, booktabs}
\newcolumntype{C}[1]{>{\centering\arraybackslash}m{#1}}
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}m{#1}}

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
% % ----------------------------------------------------------------
% % Clase personalizada: texnote_article.cls
% % ----------------------------------------------------------------

% \NeedsTeXFormat{LaTeX2e}
% \ProvidesClass{texnote_article}
% % \PassOptionsToClass{\CurrentOption}{article}
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
% \DeclareOption{nojustify}{
%     \AtBeginDocument{\raggedright}
% }
% % \LoadClass{article}
% % \LoadClass[a4paper,18pt]{article}
% % Ajustes microscópicos en el ancho de los caracteres y los espacios. 
% % Esto reduce drásticamente la necesidad de cortar palabras sin que el ojo humano lo note.

% \ProcessOptions\relax
% \RequirePackage{microtype}
% % Usamos 'extarticle' en lugar de 'article' porque 'article' NO soporta 18pt.
% % 'extarticle' soporta: 8pt, 9pt, 10pt, 11pt, 12pt, 14pt, 17pt, 20pt.
% \LoadClass{extarticle}

% % ================================================================
% % CONFIGURACIÓN DEL IDIOMA Y TIPOGRAFÍA
% % ================================================================

% \RequirePackage[utf8]{inputenc}   % Soporte para caracteres UTF-8
% \RequirePackage[T1]{fontenc}      % Mejora la salida de fuentes
% \RequirePackage[english,spanish, es-nodecimaldot, es-tabla]{babel} % Configuración del idioma en español
% \selectlanguage{spanish} % Selecciona el idioma predeterminado

% \RequirePackage{kpfonts}  % Tipografía refinada
% \RequirePackage{csquotes} % Manejo avanzado de citas
% \RequirePackage{fontawesome5}      % Íconos de FontAwesome
% \RequirePackage{smartdiagram}
% \RequirePackage{parskip}
% \usesmartdiagramlibrary{additions}
% \RequirePackage{color_definitions}
% \RequirePackage{Boxes_Draws}[March_2025]
% \RequirePackage{TikZ_Draws}
% \RequirePackage{command_definitions}

% % Guiones y saltos de linea 
% % Valor por defecto es 50. Subirlo a 2000 lo hace muy reacio a cortar.
% \hyphenpenalty=1000
% \exhyphenpenalty=1000

% % Opcional: Aumentar la tolerancia de espacios en blanco para evitar "overfull boxes"
% \tolerance=1000
% % ================================================================
% % PAQUETES MATEMÁTICOS
% % ================================================================

% \RequirePackage{amsthm}   % Teoremas y demostraciones
% \RequirePackage{amssymb}  % Símbolos matemáticos adicionales
% \RequirePackage{mathrsfs} % Fuentes matemáticas adicionales
% \RequirePackage{amsmath}  % Entornos matemáticos avanzados

% % ================================================================
% % CONFIGURACIÓN DE DISEÑO Y LAYOUT DEL DOCUMENTO
% % ================================================================

% \RequirePackage{geometry} % Configuración de márgenes
% \geometry{
%     left=2.54cm, right=2.54cm,
%     top=2.5cm, bottom=2.05cm
% }

% \RequirePackage{multicol}  % Soporte para columnas múltiples
% \RequirePackage{multirow}
% \RequirePackage{graphicx}  % Manejo de imágenes
% \graphicspath{{../resources}
%         {/Users/ericlucero/Documents/Academic/LaTeX-UPM/TeXNotes/resources}
%         {/Users/ericlucero/Documents/Academic/LaTeX-UPM/media/}
% }

% \RequirePackage{subcaption} % Subfiguras y subtítulos

% % ================================================================
% % PERSONALIZACIÓN DE FORMATO Y RESALTADOS
% % ================================================================

% \RequirePackage{xcolor}      % Manejo avanzado de colores
% \RequirePackage{tcolorbox}   % Cajas de resaltado para notas
% \tcbset{colback=gray!10, colframe=black, arc=3mm}

% \setlength{\parindent}{0em}  % Desactiva la sangría de párrafos

% \newcommand{\parSection}[1]{\medskip{\normalsize \textit{#1}} \\[0.5em]}

% % ================================================================
% % FORMATO DE TÍTULOS Y SECCIONES
% % ================================================================
% \RequirePackage{titlesec}  % Formato de títulos y secciones
% \titleformat{\section}{\Large\bfseries\color{colorA}}{}{0pt}{\thesection \hspace{0.25em}}
% \titleformat{\subsection}{\large\bfseries\color{gray!50!black}}{}{0pt}{\thesubsection \hspace{0.25em}}
% \titlespacing{\section}{0pt}{*1}{*0.5}
% \titlespacing{\subsection}{0pt}{*1}{*0.33}
% \titlespacing{\subsubsection}{0pt}{*0.2}{*0.33}
% % ================================================================
% % CONFIGURACIÓN DE LISTAS ENUMERADAS Y VIÑETAS
% % ================================================================
% \RequirePackage[multiple]{footmisc}

% \RequirePackage{enumitem}  % Personalización de listas
% \setlist[itemize]{font=\color{colorA}}
% \setlist[enumerate]{font=\bfseries\color{colorA}}

% % ================================================================
% % CONFIGURACIÓN DE ENCABEZADO Y PIE DE PÁGINA
% % ================================================================

% % \RequirePackage{fancyhdr} % Personalización de encabezados y pies de página
% % \pagestyle{fancy}
% % \fancyhf{}  % Limpia encabezados y pies de página
% % \fancyhead[R]{\bfseries \large{\color{colorA} \fecha}} % Fecha en el lado derecho del encabezado
% % % \fancyhead[L]{\bfseries {\color{colorA}\leftmark}}    % Título de la sección en el lado izquierdo del encabezado
% % \fancyhead[L]{\bfseries {\color{colorA}\thetitle}}    % Título de la sección en el lado izquierdo del encabezado
% % \fancyfoot[C]{\thepage}  % Número de página en el centro del pie de página
% \makeatletter
% \newcommand{\titulo}{\@title}
% \makeatother

% \RequirePackage{titleps} % No usar con fancyhdr (conflicto)
% \newpagestyle{main}[\large]{
%     \setheadrule{.55pt}%
%     \sethead[\huge\colorbox{colorA}{\color{white}{\thepage}}]%  even-left
%     [\titulo]%                              even-center
%     [\colorbox{colorA}{\fecha}]%     even-right
%     {\color{colorA}\fecha}%     odd-left
%     {}
%     % {\titulo}%                              odd-center
%     {\colorbox{colorA}{\color{white}{\thepage}}}%  odd-right
% }
% \pagestyle{main}

% % ================================================================
% % DEFINICIÓN DE COMANDOS PERSONALIZADOS
% % ================================================================

% % Caja de notas resaltadas
% \newcommand{\slipbox}[1]{\begin{quote}\textbf{Nota:} #1\end{quote}}

% % ================================================================
% % ÍNDICE Y REFERENCIAS CRUZADAS
% % ================================================================

% \RequirePackage{ifthen}  % Evaluación condicional
% \RequirePackage{catchfilebetweentags} % Manejo de fragmentos de código

% % Comando para etiquetas de referencia en make4ht
% \makeatletter
% \newcommand\currentdoc[1]{\edef\@currentlabel{#1}\label{#1}}
% \makeatother

% % ================================================================
% % BIBLIOGRAFÍA Y CITAS
% % ================================================================

% \RequirePackage[
%     backend=biber,
%     maxcitenames=1,      % Limita a 2 autores en la cita, seguido de "et al."
%     citestyle=authoryear,   % Estilo de citas numérico
%     % citestyle=numeric,   % Estilo de citas numérico
%     style=authoryear,
%     % style=abbrv,
%     sorting=none,        % Orden de las referencias según aparecen en el texto
%     url=false,
%     date=year
% ]{biblatex}
% \addbibresource{theBibliography.bib}
% \addbibresource{metaheuristics.bib} % Archivo de bibliografía
% % \addbibresource{../bibliography.bib} % Archivo de bibliografía

% % Traducción de etiquetas bibliográficas al español
% \DefineBibliographyStrings{spanish}{
%     andothers = {\textit{et\addabbrvspace al\adddot}}, % Personaliza "et al."
%     and = {y}, % Traduce "and" a "y"
% }

% \newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
% \newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
% \newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
% \RequirePackage{colortbl} % para más funciones de tabla
% \RequirePackage{tablefootnote}
% \RequirePackage{threeparttable}
% \RequirePackage{booktabs}
% % Ajuste de formato en citas
% \renewcommand*{\nameyeardelim}{\addcomma\space}
% \renewcommand*{\bibpagespunct}{\addcolon\addspace}
% \renewcommand{\postnotedelim}{%
%     \iffieldpages{postnote}
%     {\addcolon\space}
%     {\addspace}}
\RequirePackage{lipsum}
% \RequirePackage{etex}
% % ================================================================
% % HIPERVÍNCULOS Y ENLACES
% % ================================================================
% \RequirePackage{xr-hyper}
% \RequirePackage{hyperref} % Enlaces internos y externos
% \hypersetup{
%     pdftitle={\titulo},    % title
%     pdfauthor={Eric Lucero Gonzalez},     % author
%     pdfsubject={PhD Zetteltasken},   % subject of the document
%     pdfcreator={Eric Lucero Gonzalez},   % creator of the document
%     colorlinks=true,   % Activar enlaces en color
%     linkcolor=colorA,  % Color para enlaces internos
%     urlcolor=colorA,   % Color para enlaces externos
%     citecolor=colorA   % Color para citas
% }


% \RequirePackage[capitalize,nameinlink,noabbrev]{cleveref}


% \RequirePackage{fnpct}

% %TeXNotes Commands
% \newcommand{\excref}[2][note]
% {\ifthenelse{\equal{#1}{note}}
%     {\hyperref[#2-#1]{\texttt{#2}}}
%     {\hyperref[#2-#1]{\texttt{#2/}\cref{#2-#1}}}}
% \newcommand{\exhyperref}[3][note]{\hyperref[#2-#1]{#3}}

% \newcommand{\transclude}[2][note]{\ExecuteMetaData[../notes/slipbox/#2.tex]{#1}}

% \usepackage{catchfilebetweentags}
% \RequirePackage[super]{nth}

