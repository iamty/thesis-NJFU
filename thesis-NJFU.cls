%
%  Copyright 2021 Yi Tang <iamty@njfu.edu.cn>
%
%  This work may be distributed and/or modified under the
%  conditions of the LaTeX Project Public License, either version 1.3
%  of this license or (at your option) any later version.
%  The latest version of this license is in
%    http://www.latex-project.org/lppl.txt
%  and version 1.3 or later is part of all distributions of LaTeX
%  version 2005/12/01 or later.
%
%  This work has the LPPL maintenance status `maintained'.
% 
%  The Current Maintainer of this work is Yi Tang.
%
%  This work consists of the files theis-NJFU.cls.
%			.------..------.
%			|T.--. ||Y.--. |
%			| :/\: || (\/) |
%			| (__) || :\/: |
%			| '--'T|| '--'Y|
%			`------'`------'
%

\ProvidesClass{thesis-NJFU}[2021/5/29 thesis-NJFU v1.0 by ty ]

\LoadClassWithOptions{article}

%基础宏包
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{setspace}
\RequirePackage{url}

%字体设置
\RequirePackage{ctex}
\RequirePackage{fontspec}
    \setCJKmainfont{SimSun}[AutoFakeBold=2.5,ItalicFont=KaiTi]%正文宋体
    \setmainfont{Times New Roman}
    \setCJKfamilyfont{hwzs}{STZhongsong}[AutoFakeBold=2.0]%华文中宋
    \newcommand{\hwzs}{\CJKfamily{hwzs}}
    \setCJKfamilyfont{fs}{FangSong}[AutoFakeBold=2.0]%仿宋
    \newcommand{\fs}{\CJKfamily{fs}}
    \setCJKfamilyfont{heiti}{SimHei}[AutoFakeBold]%[BoldFont = SimHei]%黑体
    \renewcommand{\heiti}{\CJKfamily{heiti}}
    \newcommand{\htbold}{\heiti\bfseries}%黑体加粗
	
%图片路径
\graphicspath{{./pic/}}

%页边距
\RequirePackage{geometry}
\geometry{left=3cm,right=3cm,top=2cm,bottom=2cm,headheight=1.2cm,headsep=5mm,footskip=5mm}%页边距

%表格中使用\tabincell{c}{}自动换行
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}}

%交叉引用相关
\RequirePackage{hyperref}					% Reference
\hypersetup{colorlinks,%				% Reference color setup	
    bookmarks,%生成书签
    bookmarksopen,%默认打开书签
    bookmarksopenlevel=\maxdimen,%展开层次 最大
    linkcolor=black,%内部链接颜色
    citecolor=black,%交叉引用颜色
    urlcolor=black %外部链接颜色
    }

\RequirePackage{titlesec} %标题格式
    \titleformat{\section}{\xeCJKDeclareCharClass{CJK}{`0 -> `9}\centering\heiti\fontsize{18pt}{0pt}\selectfont}{\arabic{section}\quad\quad}{0em}{}[\vspace{1ex}]%一级标题黑体小二居中
    \titleformat{\subsection}{\xeCJKDeclareCharClass{CJK}{`0 -> `9}\heiti\fontsize{15pt}{0pt}\selectfont}{\thesubsection}{1em}{}%黑体小三
    \titleformat{\subsubsection}{\xeCJKDeclareCharClass{CJK}{`0 -> `9}\heiti\fontsize{14pt}{0pt}\selectfont}{\thesubsubsection}{1em}{}%黑体四号
    \newcommand{\sectionbreak}{\clearpage}%每节结束自动新一页

%公式以章节编号
\RequirePackage{amsmath}
    \numberwithin{equation}{subsection}
	
%题注格式
\RequirePackage{caption}
    \DeclareCaptionFont{songti5}{\fontsize{10.5pt}{0pt}\selectfont}
    \DeclareCaptionLabelSeparator*{2kongge}{\qquad}
    %select attributes for table caption
    \captionsetup[table]{labelsep=2kongge,justification=centering,font=songti5}
    %select attribute for figure caption
    \captionsetup[figure]{labelsep=2kongge,font=songti5}
	
\newcommand{\figref}[1]{图\ref{#1}}
\newcommand{\tabref}[1]{表\ref{#1}}

%定理环境
\newtheorem{definition}{定义}
\newtheorem{theorem}{定理}
\newtheorem{lemma}{引理}
\newtheorem{corollary}{推论}
\newtheorem{proposition}{{命题}}
\newtheorem{example}{{例}}

\newenvironment{solution}{\noindent\textbf{\emph{解}}\quad }{}


%学院,专业,班级,学号,姓名,中英文标题

%%中英文标题
\newcommand{\cn@thetitlehead}{\quad}
\newcommand{\cn@thetitletail}{\quad}
\newcommand{\en@thetitle}{\quad}
\renewcommand{\title}[3]{
  \renewcommand{\cn@thetitlehead}{#1}
  \renewcommand{\cn@thetitletail}{#2}
  \renewcommand{\en@thetitle}{#3}
}

%%学院
\newcommand{\thecollege}{\quad}
\newcommand{\college}[1]{
	\renewcommand{\thecollege}{#1}
}

%%专业
\newcommand{\themajor}{\quad}
\newcommand{\major}[1]{
	\renewcommand{\themajor}{#1}
}

%%班级
\newcommand{\theclass}{\quad}
\newcommand{\class}[1]{
	\renewcommand{\theclass}{#1}
}

%%学号
\newcommand{\thestudentnumber}{\quad}
\newcommand{\studentnumber}[1]{
	\renewcommand{\thestudentnumber}{#1}
}

%%姓名
\newcommand{\theauthor}{\quad}
\renewcommand{\author}[1]{
	\renewcommand{\theauthor}{#1}
}

%%指导老师
\newcommand{\theadvisor}{\quad}
\newcommand{\advisor}[1]{
	\renewcommand{\theadvisor}{#1}
}

%%指导老师职称
\newcommand{\theadvisortitle}{\quad}
\newcommand{\advisortitle}[1]{
	\renewcommand{\theadvisortitle}{#1}
}

%汉字日期
\RequirePackage{zhnumber} %中文数字
\RequirePackage{datetime} %日期
    \renewcommand{\today}{\zhdigits{\number\year} 年 \zhdigits{\number\month} 月 \zhnumber{\number\day} 日}

%封面
\newcommand{\makecover}{
	\pagestyle{empty}
	\vspace*{31.5pt}
	\begin{center}
        \includegraphics[width=2.16cm]{./res/cover/logo.jpg}
        \includegraphics[width=8.95cm]{./res/cover/sn.jpg}
        \vspace{2em}
        \par {\hwzs\fontsize{34pt}{0pt}\selectfont 本科生课程设计(论文)}
        \vspace{63pt}
        \begin{table}[htbp]
			\fs\fontsize{15pt}{0pt}\selectfont
			\centering
			\begin{tabular}{p{2cm}<{\raggedright} p{3.37cm}<{\centering} p{1.4cm}<{\raggedright} p{3.37cm}<{\centering}}
	
				\multicolumn{1}{l}{\heiti\fontsize{16pt}{0pt}\textbf{题\hspace{1.5em}目:}} &\multicolumn{3}{c}{\underline{\makebox[8.89cm]{\cn@thetitlehead}}} \\[0.8cm]
				&  \multicolumn{3}{c}{\underline{\makebox[8.89cm]{\cn@thetitletail}}}\\[0.8cm]
				\multicolumn{1}{l}{\heiti\fontsize{16pt}{0pt}\textbf{学\hspace{1.5em}院:}} &\multicolumn{3}{c}{\underline{\makebox[8.89cm]{\thecollege}}}  \\[0.8cm]
				\multicolumn{1}{l}{\heiti\fontsize{16pt}{0pt}\textbf{专\hspace{1.5em}业:}} &\multicolumn{3}{c}{\underline{\makebox[8.89cm]{\themajor}}}  \\[0.8cm]
				\multicolumn{1}{l}{\heiti\fontsize{16pt}{0pt}\textbf{班\hspace{1.5em}级:}} &\multicolumn{3}{c}{\underline{\makebox[8.89cm]{\theclass}} }  \\[0.8cm]
				\multicolumn{1}{l}{\heiti\fontsize{16pt}{0pt}\textbf{学\hspace{1.5em}号:}} &\multicolumn{3}{c}{\underline{\makebox[8.89cm]{\thestudentnumber}}} \\[0.8cm]
				\multicolumn{1}{l}{\heiti\fontsize{16pt}{0pt}\textbf{学生姓名:}} &\multicolumn{3}{c}{\underline{\makebox[8.89cm]{\theauthor}}}  \\[0.8cm]
				\multicolumn{1}{l}{\heiti\fontsize{16pt}{0pt}\textbf{指导老师:}}&\underline{\makebox[3.37cm]{\theadvisor}} & \multicolumn{1}{l}{{\heiti\fontsize{16pt}{0pt}\textbf{职称:}}}& {\underline{\makebox[3.37cm]{\theadvisortitle}}} \\
			\end{tabular}%
		\end{table}%
        {\fontsize{16pt}{0pt}\selectfont\vspace*{3em}}
        
        {\fontsize{16pt}{0pt}\selectfont\today}
    \end{center}
	
	\newpage
}

\newcommand{\copyrightpage}{
	\vspace*{1.5cm}
	\begin{center}
	\fontsize{34pt}{0pt}\bfseries\selectfont
		COPYRIGHT PAGE \\
		\vspace*{0.5em}
		of \\
		\vspace*{0.5em}
		thesis-NJFU
	\end{center}
	\vspace*{0.5cm}
	\begin{center}
		This project is created with \LaTeX .\\
		This is a copyright page of the current release.\\
		Current version is v1.0.\\
		\vspace*{2em}
		For all NJFUers who fight for their thesis :)
	\end{center}
	%\vspace*{2cm}
	\begin{center}
		\begin{figure}[h]
			\centering
			\includegraphics[width = 0.5\textwidth]{./res/copyright/ty_publlication.png}
		\end{figure}
		Copyright © 2022 ty All Rights Reserved.
	\end{center}
	\newpage
}

%中英文摘要
\newcommand{\enabstractname}{ABSTRACT}
\newcommand{\cnabstractname}{摘\quad 要}
%%英文摘要
\newenvironment{enabstract}{%
\begin{center}
		\setstretch{1.625}
        {\fontsize{18pt}{23.4pt}\selectfont \en@thetitle}
\end{center}
  \par\fontsize{12pt}{0pt}\selectfont
  \noindent\mbox{}\hfill{\bfseries\fontsize{14pt}{0pt}\selectfont \enabstractname}\hfill\mbox{}\par
  \vskip 1ex \setstretch{1.625}}{\par\vskip 1ex \newpage}
%%中文摘要
\newenvironment{cnabstract}{%
	\begin{center}
		\setstretch{1.625}
        {\heiti\fontsize{18pt}{23.4bp}\selectfont \cn@thetitlehead  \cn@thetitletail}
    \end{center}
	\par 
	\noindent\mbox{}\hfill{\bfseries\fontsize{14pt}{0pt}\selectfont \cnabstractname}\hfill\mbox{}\par
  \vskip 2.5ex  \setstretch{1.625}}{\par\vskip 2.5ex\newpage}
%%英文关键词
\newenvironment{enkeywords}{\\ \hspace*{\fill} \\ \par\noindent{\bfseries Key words: }}{}
%%中文关键词
\newenvironment{cnkeywords}{\\ \hspace*{\fill} \\ \par\noindent{\htbold 关键词: }}{}

%目录
\RequirePackage{titletoc}
\renewcommand{\contentsname}{\centering\heiti\fontsize{18pt}{0pt}\selectfont 目\quad 录}
\titlecontents{section}[0em]{\fontsize{10.5pt}{0pt}\selectfont \vspace{11pt}}{\contentslabel{1em}}{}{~\titlerule*[0.6pc]{$.$}~\contentspage}
\titlecontents{subsection}[2em]{\fontsize{10.5pt}{0pt}\selectfont \vspace{11pt}}{\contentslabel{1.5em}}{\hspace*{-2em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
\titlecontents{subsubsection}[4em]{\fontsize{10.5pt}{0pt}\selectfont \vspace{11pt}}{\contentslabel{2.5em}}{\hspace*{-2em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}

%页眉页脚
\RequirePackage{fancyhdr}
\fancypagestyle{fancy}{
        \fancyhead[L]{}
        \fancyhead[C]{\fontsize{10.5pt}{0pt}\selectfont 南京林业大学本科生毕业设计（论文）\vspace{1mm}}
        \fancyhead[R]{}
        \fancyfoot{}
        \fancyfoot[L]{}
        \fancyfoot[C]{\fontsize{9pt}{0pt}\selectfont -\thepage -}
        \fancyfoot[R]{}
    }

%正文
\newcommand{\mainpart}{\clearpage\pagestyle{fancy}\setstretch{1.625}\setcounter{page}{1}}

%结论
\newcommand{\conclusion}{
	\section*{结\quad 论}
	\addcontentsline{toc}{section}{结论}
}

%致谢
\newcommand{\acknowledgement}{
	\section*{致\quad 谢}
	\addcontentsline{toc}{section}{致谢}
}

%参考文献
\RequirePackage[backend=biber,style=gb7714-2015,sorting = none,gbcitelocal = chinese]{biblatex}
    \addbibresource[location=local]{references.bib}
	
\newcommand{\thesisreferences}{
	\titleformat{\section}{\xeCJKDeclareCharClass{CJK}{`0 -> `9}\heiti\fontsize{18pt}{0pt}\selectfont}{\arabic{section}\quad\quad}{0em}{}[]
	\renewcommand{\bibsetup}{\setstretch{1.421875}}
	\renewcommand{\bibfont}{\fontsize{10.5pt}{13.65pt}\selectfont}
	\printbibliography[heading=bibintoc,title=参考文献]
	\titleformat{\section}{\xeCJKDeclareCharClass{CJK}{`0 -> `9}\centering\heiti\fontsize{18pt}{0pt}\selectfont}{\arabic{section}\quad\quad}{0em}{}[\vspace{1ex}]
}