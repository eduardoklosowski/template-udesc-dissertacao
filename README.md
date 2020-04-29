Template para dissertação da UDESC
==================================

Este é um template LaTeX feito para dissertações da UDESC, seguindo os documentos presentes no [site da pós graduação](https://www.udesc.br/cct/secretariapos/trabalhos_academicos).

Foram utilizadas algumas coisas do modelo [UDESC - abnTeX](https://github.com/luisbilecki/udesc-abntex), mas implementando-o como um `documentclass` em vez de um `package`. Outra diferença é que este template é mais simplificando, não importando diversos pacotes automaticamente, mas se for necessário para o trabalho podem ser incluindos normalmente.

Arquivos
--------

`dissertacaoudesc.cls` - Arquivo do template.

`main.tex` - Arquivo principal do trabalho, contem um exemplo que pode ser editado livremente.

`referencias.bib` - Arquivo com as informações para as citações e referências.

`pretexto/*.tex` - Diversos arquivos dos elementos pré-textuais, todos chamados a partir do `main.tex`.

`texto/` - Diretório sugerido para organizar os capítulos do trabalho. Para adicionar um novo arquivo no trabalho, inclua-o no `main.tex` também.

`fig/` - Diretório sugerido para organizar as figuras a serem incluídas no trabalho.

`apendice/` - Diretório sugerido para organizar os apêndices. Para adicionar um novo arquivo no trabalho, inclua-o no `main.tex` também.

`anexo/` - Diretório sugerido para organizar os anexos. Para adicionar um novo arquivo no trabalho, inclua-o no `main.tex` também.
