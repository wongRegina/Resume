\usepackage{enumitem}
\usepackage{multirow}
\usepackage[ddmmyyyy]{datetime}
\usepackage{changepage}
\usepackage{adjustbox,lipsum}
\renewcommand{\dateseparator}{.}

% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1cm, vmargin=0.5cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everything
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
\hspace{-0.5 in}Last Updated on
\today
\end{textblock}}

%  New Name command
\newcommand{\namesections}[7]{
\begin{table}[]
    \begin{tabular}{l|l l} 
     {\multirow{4}{27.5em}{\sffamily
		\fontspec[Path = fonts/lato/]{Lato-Hai}\fontsize{36pt}{0cm}\selectfont #1
		\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2}} & 
		 \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #5  &
         \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3 \\ &
         \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #4  &
         \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #6\\ &
         \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #7\\ 
    \end{tabular}
    
\vspace{-0.8 cm}
\end{table}
\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.2pt}}
\vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}    

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{16pt}{22pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\raggedright\bfseries\uppercase}{}{0em}{}

\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1}\normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 } \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{5pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\setlist{nolistsep}\begin{itemize}[noitemsep]} {\end{itemize}}
