%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%	LICHTI'S DOCUMENT CLASS FOR ARTICLES
%
%	Author: Christoph Lichtenegger
%	Date: 2021/01/17
%	Last Modification: 2021/01/30
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CLASS CREATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LichtisArticle}[2021/01/17 Lichti's article class]

\LoadClassWithOptions{scrartcl}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% OPTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{english} 	{\PassOptionsToPackage{\CurrentOption}{babel}}
\DeclareOption{ngerman} 	{\PassOptionsToPackage{\CurrentOption}{babel}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DATA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\gdef\@title		{}
\gdef\@subtitle		{}
\gdef\@author		{}
\gdef\@date			{\today}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% STANDARD PACKAGES
\RequirePackage{babel} 						% https://ctan.org/pkg/babel
\RequirePackage[utf8]{inputenc} 			% https://ctan.org/pkg/inputenc
\RequirePackage[T1]{fontenc} 				% https://ctan.org/pkg/fontenc


% DOCUMENT BORDERS
\RequirePackage[
	paper		= a4paper,
	left		= 25mm,
	right		= 25mm,
	top 		= 30mm,
	bottom		= 30mm]{geometry}			% https://ctan.org/pkg/geometry


% HEADER
\RequirePackage{fancyhdr}					% https://ctan.org/pkg/fancyhdr
\pagestyle{fancy}
\lhead{}
\chead{}
\rhead{\rightmark}


% REFERENCES
\RequirePackage{hyperref}					% https://ctan.org/pkg/hyperref
\hypersetup{
    pdftoolbar	= true,
    colorlinks	= true,
    citecolor	= blue,
    filecolor	= blue,
    linkcolor 	= blue,
    menucolor	= blue,
    urlcolor	= blue}


% FIGURES AND SUBFIGURES
\RequirePackage{graphicx} 					% https://ctan.org/pkg/graphicx
\RequirePackage{caption}					% https://www.ctan.org/pkg/caption
\RequirePackage{subcaption}					% https://www.ctan.org/pkg/subcaption


% BIBLIOGRAPHY
\RequirePackage[
	backend		= bibtex,
	style		= numeric-comp,
	maxbibnames	= 99]{biblatex}	% https://ctan.org/pkg/biblatex
	

% PACKAGES FOR MATH
\RequirePackage{amsmath}					% https://ctan.org/pkg/amsmath
\RequirePackage{amsfonts} 					% https://ctan.org/pkg/amsfonts
\RequirePackage{amssymb}					% https://mirror.easyname.at/ctan/fonts/amsfonts/doc/amssymb.pdf 


% PACKAGES FOR CHEMESTRY
\RequirePackage{chemfig}					% https://ctan.org/pkg/chemfig


% DIAGRAMS, GRAPHS, PLOTS, ETC.
\RequirePackage{tikz}						% www.ctan.org/pkg/tikz



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ADDITIONAL SETTINGS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{0em}
\setlength{\parskip}{0.5em}