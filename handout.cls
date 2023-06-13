\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{handout}[2009/11/30 v0.1 Jim Fowler's Handout class]

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

% Load LaTeX's article class
\LoadClass{article}

\makeatletter
\newcommand{\@course}{Mathematics}
\newcommand{\course}[1]{\renewcommand{\@course}{#1}}
\makeatother

\date{\ifcase\month\or Winter\or Winter\or March\or Spring\or Spring\or Spring\or Summer\or Summer\or Autumn\or Autumn\or Autumn\or Autumn\fi\space\number\year}

\usepackage{graphicx}
\usepackage{geometry}
\geometry{margin=1.25in,top=0.7in,bottom=1in}

\usepackage{titlesec}


 


\makeatletter
\renewcommand{\maketitle}{%
  \begin{center}%
    {\large\textsf{\textbf{\@title\hfill\@course}}\vspace{0.5ex}\hrule\vspace{0.5ex}}
    {\large\textsf{\@date\hfill\@author}}
  \end{center}}
\makeatother

\titleformat{\section}{\sffamily\bfseries}
{\Large\thesection}{0pt}{\Large}[{\titlerule[0.5pt]}]  % {\Large\thesection}{0pt}{ \linebreak\Large}[{\titlerule[0.5pt]}]  \linebreak\Large

\titleformat{\subsection}{\sffamily\bfseries}
{\small\thesubsection}{0pt}{\large}[]


% \titlespacing*{<command>}{<left>}{<before-sep>}{<after-sep>}
\titlespacing*{\subsection}{0pt}{0pt}{5pt}



\titleformat{\subsubsection}{\sffamily\bfseries}
{\small\thesubsection}{0pt}{\linebreak\small}

\usepackage{amsmath}
\usepackage{amsthm}
\newtheorem{theorem}{Theorem}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{definition}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{example}[theorem]{Example}
\newtheorem{definition}[theorem]{Definition}

\usepackage{amssymb}
\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}

% That's all, folks!
\endinput