\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{toyobeam}[2017/06/02 toyo color beamer]
\LoadClass{beamer}

%\documentclass[dvipdfmx, 10pt]{beamer}
\usepackage{bxdpx-beamer}  % ナビゲーションシンボルを機能させる
\usepackage{pxjahyper}     % しおりの文字化け対策
\usepackage{minijs}        % 和文メトリックの調整（代わりに otf を読み込んでも良い）
\usepackage{amsmath}
\usepackage{verbatim}
\renewcommand{\kanjifamilydefault}{gt} % 漢字をゴシックに default: rm

%%% Base colors
\definecolor{TOYO_light}{rgb}{0.00, 0.228, 0.348}
\definecolor{TOYO_mid}{rgb}{0.00, 0.19, 0.29}
\definecolor{TOYO_dark}{rgb}{0.00, 0.152, 0.232}

%%% Theme                   
\usetheme{CambridgeUS}
\setbeamercolor*{structure}{fg=TOYO_mid,bg=TOYO_dark}
\setbeamercolor*{frametitle}{fg=white, bg=TOYO_mid}
\setbeamercolor*{framesubtitle}{fg=TOYO_light!50!white, bg=TOYO_dark}
\setbeamercolor{block title}{use=structure,fg=white,bg=structure.fg!75!black}
\setbeamercolor{block title alerted}{use=alerted text,fg=white,bg=alerted text.fg!75!black}
\setbeamercolor{block title example}{use=example text,fg=white,bg=example text.fg!75!black}
\setbeamercolor{block body}{parent=normal text,use=block title,bg=block title.bg!10!bg}
\setbeamercolor{block body alerted}{parent=normal text,use=block title alerted,bg=block title alerted.bg!10!bg}
\setbeamercolor{block body example}{parent=normal text,use=block title example,bg=block title example.bg!10!bg}

\setbeamercolor*{palette primary}{use=structure,fg=white,bg=structure.fg}
\setbeamercolor*{palette secondary}{use=structure,fg=white,bg=structure.fg!75!black}
\setbeamercolor*{palette tertiary}{use=structure,fg=white,bg=structure.fg!50!black}
\setbeamercolor*{palette quaternary}{fg=white,bg=black}
\setbeamercolor*{titlelike}{fg=white, bg=TOYO_dark}
\setbeamercolor*{separation line}{}
\setbeamercolor*{fine separation line}{}

%%% tabular
\makeatletter
\def\Hline{%
\noalign{\ifnum0=`}\fi\hrule \@height 2pt \futurelet
\reserved@a\@xhline
}
\makeatother

%%% packages
\usepackage[absolute,overlay]{textpos}
\usepackage{graphicx}
\usepackage{multimedia}

%%% 
\AtBeginSection[]
{
	\begin{frame}{Outline}
	\tableofcontents[currentsection]
	\end{frame}
}
