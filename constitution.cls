\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{constitution}[2009/05/15 v0.0.1 Document class for typesetting a constitution]

\LoadClass{report}

\RequirePackage[letterpaper,margin=1in]{geometry}
\RequirePackage[colorlinks,linkcolor=blue]{hyperref}
%\usepackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}

%\newcommand{\bylaw}[1]{\part{#1} \setcounter{section}{0}}
%\renewcommand{\partname}{Bylaw}

\titleclass\bylaw{straight}[\part]
\titleformat{\bylaw}[display]{\filcenter\normalfont\bfseries}{Bylaw \thebylaw}{0pt}{\filcenter\normalfont\bfseries}
\titlespacing*{\bylaw}{0mm}{*4}{*2.3}[0mm]
\newcounter{bylaw}
\renewcommand\thebylaw{\Roman{bylaw}}

\titlecontents{bylaw}
[1.5em]
{\bfseries}
{\contentslabel{2.3em}}
{\hspace*{-2.3em}}
{\titlerule*[1pc]{.}\contentspage}

%\makeatletter
%\renewcommand\section{\@startsection
%{section}{1}{0mm}%
%{-\baselineskip}%
%{-0.5\baselineskip}%
%{\normalfont\normalsize\bfseries}}%
%\makeatother
\makeatletter
\@addtoreset{section}{bylaw}
\makeatother
\titleformat{\section}[runin]{\normalfont\scshape}
{Section \thesection.}{-0.5em}{}[\quad] % Changed spacing to -0.5 em

\renewcommand{\thesection}{\arabic{section}} 
\renewcommand{\theenumi}{\alph{enumi}}
\renewcommand{\theenumii}{\roman{enumii}}