% Template para dissertação da UDESC
% Para baixar a versão mais recente acesse <https://github.com/eduardoklosowski/template-udesc-dissertacao>

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{dissertacaoudesc}


% Carrega abnTeX2

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\ProcessOptions\relax
\LoadClass[a4paper,oneside,openright,onecolumn,12pt,chapter=TITLE,section=TITLE]{abntex2}


% Pacotes

\RequirePackage{microtype}
\RequirePackage{hyperref}
\RequirePackage[alf,abnt-emphasize=bf,abnt-etal-list=3,abnt-full-initials=yes,abnt-repeated-author-omit=yes]{abntex2cite}
\RequirePackage[printonlyused]{acronym}
\RequirePackage{pdfpages}

\hypersetup{
    pdfcreator={Template para Dissertação da UDESC},
    hidelinks,
}


% Formata Página

\sloppy


%% Margens

\setulmarginsandblock{3cm}{2cm}{*}  % Superior e inferior
\setlrmarginsandblock{3cm}{2cm}{*}  % Interna e externa
\checkandfixthelayout


%% Cabeçalho e Rodapé

\makepagestyle{dissertacaoudesc}
% Conteúdo do cabeçalho
\makeoddhead{dissertacaoudesc}
    {}{}{\ABNTEXfontereduzida\thepage}

\let\oldtextual\textual
\renewcommand{\textual}{
    \oldtextual
    \pagestyle{dissertacaoudesc}
    \aliaspagestyle{chapter}{dissertacaoudesc}
}

\setfootins{1.5\onelineskip}{1.5\onelineskip}  % Espaçamento antes do rodapé

% Linha do rodapé
\renewcommand{\footnoterule}{
    \kern -3pt \hrule width 5cm height 0.4pt \kern 2.6pt
}

\setlength{\footnotesep}{0cm}  % Espaçamento entre as notas


% Formata Caractere

%% Fonte

\usepackage{helvet}  % Define fonte Helvetica
\renewcommand{\familydefault}{\sfdefault}  % Utiliza fontes Sans por padrão


%% Títulos

\renewcommand{\ABNTEXchapterfont}{\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
\renewcommand{\ABNTEXsectionfont}{\normalfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsectionfont}{\bfseries}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont\itshape}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}


% Utiliza tamanho reduzido na legenda
\let\manuallegend\legend
\renewcommand{\legend}[1]{
    \manuallegend{\ABNTEXfontereduzida#1}
}


% Formata Parágrafo

%% Recuos e Espaçamentos

\usepackage{indentfirst}  % Recua primeiro parágrafo do texto
\setlength{\parindent}{1.25cm}  % Recuo da primeira linha
\setlength{\ABNTEXcitacaorecuo}{4cm}  % Recuo da citação longa

\setlength{\parskip}{0cm}  % Espaçamento entre parágrafos
\setlength{\beforechapskip}{1.5\onelineskip}  % Espaçamento antes dos Títulos
\setlength{\midchapskip}{1.5\onelineskip}  % Espaçamento entre os Títulos
\setlength{\afterchapskip}{1.5\onelineskip}  % Espaçamento depois dos Títulos
\setlength{\abovecaptionskip}{0cm}  % Espaçamento antes dos Títulos e Legendas de Elementos
\setlength{\belowcaptionskip}{0cm}  % Espaçamento depois dos Títulos e Legendas de Elementos


% Numeração

\counterwithout{equation}{chapter}  % Conta equações de forma contínua


% Dados

\providecommand{\imprimirorientadorrotulo}{}
\newcommand{\orientadorrotulo}[1]{\renewcommand{\imprimirorientadorrotulo}{#1}}
\orientadorrotulo{Orientador}

\providecommand{\imprimirorientadortitulo}{}
\newcommand{\orientadortitulo}[1]{\renewcommand{\imprimirorientadortitulo}{#1}}
\orientadortitulo{Prof. Dr.}

\providecommand{\imprimirorientadorinstituicao}{}
\newcommand{\orientadorinstituicao}[1]{\renewcommand{\imprimirorientadorinstituicao}{#1}}

\providecommand{\imprimircoorientadorrotulo}{}
\newcommand{\coorientadorrotulo}[1]{\renewcommand{\imprimircoorientadorrotulo}{#1}}
\coorientadorrotulo{Coorientador}

\providecommand{\imprimircoorientadortitulo}{}
\newcommand{\coorientadortitulo}[1]{\renewcommand{\imprimircoorientadortitulo}{#1}}
\coorientadortitulo{Prof. Dr.}

\providecommand{\imprimircoorientadorinstituicao}{}
\newcommand{\coorientadorinstituicao}[1]{\renewcommand{\imprimircoorientadorinstituicao}{#1}}

\providecommand{\imprimirinstituicaosigla}{}
\newcommand{\instituicaosigla}[1]{\renewcommand{\imprimirinstituicaosigla}{#1}}

\providecommand{\imprimircentro}{}
\newcommand{\centro}[1]{\renewcommand{\imprimircentro}{#1}}

\providecommand{\imprimircentrosigla}{}
\newcommand{\centrosigla}[1]{\renewcommand{\imprimircentrosigla}{#1}}

\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

\providecommand{\imprimirvolume}{}
\newcommand{\volume}[1]{\renewcommand{\imprimirvolume}{#1}}

\providecommand{\imprimirdatacompleta}{}
\newcommand{\datacompleta}[1]{\renewcommand{\imprimirdatacompleta}{#1}}

\providecommand{\imprimirpalavraschave}{}
\newcommand{\palavraschave}[1]{\renewcommand{\imprimirpalavraschave}{#1}}

\providecommand{\imprimirkeywords}{}
\newcommand{\keywords}[1]{\renewcommand{\imprimirkeywords}{#1}}


% Seções

% Títulos das seções
\addto\captionsbrazil{
    \renewcommand{\folhaderostoname}{Folha de rosto}
    \renewcommand{\folhadeaprovacaoname}{Folha de aprovação}
    \renewcommand{\dedicatorianame}{Dedicatória}
    \renewcommand{\agradecimentosname}{Agradecimentos}
    \renewcommand{\resumoname}{Resumo}
    \renewcommand{\listfigurename}{Lista de ilustrações}
    \renewcommand{\listtablename}{Lista de tabelas}
    \renewcommand{\listadesiglasname}{Lista de abreviaturas e siglas}
    \renewcommand{\listadesimbolosname}{Lista de símbolos}
    \renewcommand{\bibname}{Referências}
    \renewcommand{\apendicename}{Apêndice}
    \renewcommand{\anexoname}{Anexo}
}


%% Capa
\renewcommand{\capa}{
    \setcounter{page}{0}
    \begin{center}
        \textbf{\MakeUppercase{\imprimirinstituicao~--~\imprimirinstituicaosigla}} \\
        \textbf{\MakeUppercase{\imprimircentro~--~\imprimircentrosigla}} \\
        \textbf{\MakeUppercase\imprimircurso}
        \vspace{\fill}

        \textbf{\MakeUppercase\imprimirautor}
        \vspace{\fill}

        \textbf{\MakeUppercase\imprimirtitulo\abntex@ifnotempty{\imprimirsubtitulo}{:}}
        \abntex@ifnotempty{\imprimirsubtitulo}{
            \\
            \MakeUppercase\imprimirsubtitulo
        }
        \abntex@ifnotempty{\imprimirvolume}{
            \\
            \textbf{Vol. \imprimirvolume}
        }
        \vspace{\fill}
        \vspace{\fill}

        \textbf{\MakeUppercase\imprimirlocal} \\
        \textbf{\imprimirdata}
    \end{center}
}


%% Folha de rosto

\renewcommand{\folhaderostocontent}{
    \begin{center}
        \textbf{\MakeUppercase\imprimirautor}
        \vspace{\fill}
        \vspace{\fill}

        \textbf{\MakeUppercase\imprimirtitulo\abntex@ifnotempty{\imprimirsubtitulo}{:}}
        \abntex@ifnotempty{\imprimirsubtitulo}{
            \\
            \MakeUppercase\imprimirsubtitulo
        }
        \abntex@ifnotempty{\imprimirvolume}{
            \\
            \textbf{Vol. \imprimirvolume}
        }
        \vspace{\fill}

        \begin{adjustwidth}{8cm}{0cm}
            \begin{SingleSpace}
                \imprimirpreambulo

                \imprimirorientadorrotulo: \imprimirorientadortitulo~\imprimirorientador
                \abntex@ifnotempty{\imprimircoorientador}{
                    \\
                    \imprimircoorientadorrotulo: \imprimircoorientadortitulo~\imprimircoorientador
                }
            \end{SingleSpace}
        \end{adjustwidth}
        \vspace{\fill}
        \vspace{\fill}

        \textbf{\MakeUppercase\imprimirlocal} \\
        \textbf{\imprimirdata}
    \end{center}
}


%% Ficha Catalográfica

\usepackage{lastpage}

\newenvironment{fichacatalograficaexemplo}{
    \vspace*{\fill}
    \begin{center}
        \begin{minipage}[c]{12.5cm}
            \imprimirautor

            \hspace{0.5cm} \imprimirtitulo~/ \imprimirautor. -- \imprimirdata.

            \hspace{0.5cm} \pageref{LastPage} p.
            \vspace{\onelineskip}

            \hspace{0.5cm} \imprimirorientadorrotulo:~\imprimirorientador

            \hspace{0.5cm} \imprimirtipotrabalho~-- \imprimirinstituicao, \imprimircentro, \imprimircurso, \imprimirlocal, \imprimirdata.

            \hspace{0.5cm}
}{
        \end{minipage}
    \end{center}
    \vspace*{\onelineskip}
}


%% Folha de Aprovação

\newenvironment{folhadeaprovacaoexemplo}{
    \begin{center}
        \OnehalfSpacing
        \textbf{\MakeUppercase\imprimirautor}
        \vspace{2\onelineskip}

        \textbf{\MakeUppercase\imprimirtitulo\abntex@ifnotempty{\imprimirsubtitulo}{:}}
        \abntex@ifnotempty{\imprimirsubtitulo}{
            \MakeUppercase\imprimirsubtitulo
        }
        \abntex@ifnotempty{\imprimirvolume}{
            \\
            \textbf{Vol. \imprimirvolume}
        }
        \vspace{2\onelineskip}

        \begin{adjustwidth}{8cm}{0cm}
            \begin{SingleSpace}
                \imprimirpreambulo
            \end{SingleSpace}
        \end{adjustwidth}
        \vspace{2\onelineskip}

        \textbf{\MakeUppercase{Banca Examinadora}}
        \vspace{2\onelineskip}

        \imprimirorientadortitulo~\imprimirorientador \\ \imprimirorientadorinstituicao
        \vspace{2\onelineskip}

        \abntex@ifnotempty{\imprimircoorientador}{
            \imprimircoorientadortitulo~\imprimircoorientador \\ \imprimircoorientadorinstituicao
            \vspace{2\onelineskip}
        }
    \end{center}
    Membros:
    \vspace{2\onelineskip}
    \begin{center}
        \OnehalfSpacing
}{
        \vspace{\fill}

        \imprimirlocal, \imprimirdatacompleta
    \end{center}
}


%% Dedicatória

\let\manualdedicatoria\dedicatoria
\let\endmanualdedicatoria\enddedicatoria
\renewenvironment{dedicatoria}{
    \manualdedicatoria
    \vspace*{\fill}
    \begin{adjustwidth}{8cm}{0cm}
}{
    \end{adjustwidth}
    \vspace{2\onelineskip}
    \endmanualdedicatoria
}


%% Resumo e Abstract

\let\manualresumo\resumo
\let\endmanualresumo\endresumo
\renewenvironment{resumo}{
    \manualresumo[Resumo]
    \begin{SingleSpace}
}{
        \vspace{12pt}

        \textbf{Palavras-chave:} \imprimirpalavraschave
    \end{SingleSpace}
    \endmanualresumo
}

\newenvironment{resumoingles}{
    \manualresumo[Abstract]
    \begin{otherlanguage*}{english}
    \begin{SingleSpace}
}{
        \vspace{12pt}

        \textbf{Keywords:} \imprimirkeywords
    \end{SingleSpace}
    \end{otherlanguage*}
    \endmanualresumo
}


%% Lista de figuras

\newcommand{\imprimirlistadefiguras}{
    \listoffigures*
    \cleardoublepage
}


%% Lista de tabelas

\newcommand{\imprimirlistadetabelas}{
    \listoftables*
    \cleardoublepage
}


%% Lista de siglas

\renewcommand{\aclabelfont}{\normalfont}

\renewenvironment{siglas}{
    \pretextualchapter{\listadesiglasname}
    \begin{acronym}[TDMA]
}{
    \end{acronym}
    \cleardoublepage
}


%% Lista de símbolos

\let\manualsimbolos\simbolos
\let\endmanualsimbolos\endsimbolos
\renewenvironment{simbolos}{
    \manualsimbolos
    \begin{SingleSpacing}
}{
    \end{SingleSpacing}
    \endmanualsimbolos
}


%% Sumário


\let\oldcontentsline\contentsline
\def\contentsline#1#2{
    \expandafter\ifx\csname l@#1\endcsname\l@section
        \expandafter\@firstoftwo
    \else
        \expandafter\@secondoftwo
    \fi
    {
        \oldcontentsline{#1}{\MakeTextUppercase{#2}}
    }{
        \oldcontentsline{#1}{#2}
    }
}

\renewcommand{\cftchapterfont}{\bfseries}
\setlength{\cftbeforechapterskip}{\onelineskip}
\renewcommand{\cftsectionfont}{\normalfont}
\setlength{\cftbeforesectionskip}{0pt}
\renewcommand{\cftsubsectionfont}{\bfseries}
\setlength{\cftbeforesubsectionskip}{0pt}
\renewcommand{\cftsubsubsectionfont}{\normalfont\itshape}
\setlength{\cftbeforesubsubsectionskip}{0pt}
\renewcommand{\cftparagraphfont}{\normalfont}
\setlength{\cftbeforeparagraphskip}{0pt}

\newcommand{\imprimirsumario}{
    \tableofcontents*
    \cleardoublepage
}
