% Define a new LaTeX document class named "Template" based on extarticle
\ProvidesClass{Template}
\LoadClass{extarticle}

% Set page margins using the geometry package
\RequirePackage[margin=2cm]{geometry}

% Import Font Awesome icons
\RequirePackage{fontawesome5}

% Define custom colors
\RequirePackage{xcolor}
\definecolor{LightBlue}{HTML}{00a6fb}
\definecolor{Blue}{HTML}{0077b6}
\definecolor{LightGrey}{HTML}{515c50}
\colorlet{topic}{Blue}    % Set 'topic' color to Blue
\colorlet{subtopic}{LightBlue}  % Set 'subtopic' color to LightBlue
\colorlet{divider}{LightGrey}  % Set 'divider' color to LightGrey

% Define item markers for lists
\newcommand{\itemmarker}{{\small\textbullet}}

% Import TikZ for drawing diagrams
\RequirePackage{tikz}
\usetikzlibrary{arrows}

% Import tcolorbox for colored boxes
\RequirePackage[skins]{tcolorbox}

% Import enumitem for customizing lists
\RequirePackage{enumitem}
\setlist{
    leftmargin=*,
    labelsep=0.5em,
    nosep,
    itemsep=0.25\baselineskip,
    after=\vskip0.25\baselineskip
}
\setlist[itemize]{label=\itemmarker}

% Import graphicx for including graphics
\RequirePackage{graphicx}

% Import etoolbox for additional tools
\RequirePackage{etoolbox}

% Import dashrule for dashed lines
\RequirePackage{dashrule}

% Import multirow and tabularx for tables
\RequirePackage{multirow,tabularx}

% Import changepage for changing page dimensions
\RequirePackage{changepage}

% Set paragraph indentation to zero
\setlength{\parindent}{0pt}

% Define a command to create a divider line
\newcommand{\divider}{\textcolor{divider!30}{\hdashrule{\linewidth}{0.6pt}{0.5ex}}\medskip}

% Define a command to create the header
\newcommand{\makeheader}[2][]{%
  \begingroup
    {\Huge\bfseries\MakeUppercase{#1}\par}
    \medskip
    {\large\bfseries\color{subtopic}#2\par}
    \medskip
  \endgroup\medskip
}

% Define a command for creating a major topic section
\newcommand{\topic}[1][]{%
  {\color{topic}\LARGE\bfseries\MakeUppercase{#1}}\\[-1ex]%
  {\color{topic}\rule{\linewidth}{2pt}\par}\medskip
}

% Define a command for creating a subtopic within a major topic
\newcommand{\subtopic}[1]{%
    \textbf{\color{subtopic}{#1}} \par
}

% Commands for equations
\newcommand{\evec}{\mathbf{e}}
\newcommand{\rvec}{\mathbf{r}}
\newcommand{\svec}{\mathbf{s}}
\newcommand{\uvec}{\mathbf{u}}
\newcommand{\vvec}{\mathbf{v}}