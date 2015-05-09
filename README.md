HaxeManual 日本語版
==========

<<<<<<< HEAD
このプロジェクトに貢献するには.texファイルを編集してください。 (.mdファイルは、.texから生成されます)
=======
For contributions please edit the .tex file.  The .md files are generated from it.

To rebuild the .pdf from the command line, run `latexmk -xelatex HaxeDoc.tex`.
A recent version of [TeX Live] should provide latexmk and all needed packages
and their dependencies:

 - xelatex
 - cleveref
 - courier
 - framed
 - fullpage
 - geometry
 - graphicx
 - hyperref
 - listings
 - palatino
 - tikz, tkz-euclide, tkz-qtree
 - todonotes
 - underscore
 - xcolor
>>>>>>> english/master


マークダウンの生成
-------------------

マークダウンの生成は、convertフォルダ内のconvert.hxmlをコンパイルすることで行います。

また、以下の`-D`コンパイルオプションを使うことで追加の機能が利用できます。

- `-D compileEnv`
LaTeXの環境から画像を生成します。ただし、すでにある画像の生成をスキップします。
マークダウンから、画像(特にflowchat環境のような画像)を生成するのはあまりにも複雑です。

- `-D recompileEnv`
出力先にすでに存在する画像に対しても生成を行います。(convertの開発時に最も有用です。)

- `-D keepEnvPDF`
生成されたPDFファイルを消去せずに残します。画像の隣に同名で配置されます。

- `-D keepEnvTemp`
LaTeXのコンパイル時の一時フォルダを消去せずに残します。特に開発やデバッグで有用です。

`compileEnv`に必要なもの
-----------------------------

`compileEnv`での書き出しには、以下が必要になります。

<<<<<<< HEAD
- `xelatex` にパスを通す。[TexLive](http://www.tug.org/texlive/) のバージョン2013を使えば良いです。カスタムしたLaTeXの環境の断片を、PDFに変換します。
- `mudraw` にパスを通す。[MuPDF](http://www.mupdf.com/)に含まれます。PDFをpngの画像に変換するのに使われます。
- [Source Sans Pro](http://sourceforge.net/projects/sourcesans.adobe/) と [Source Code Pro](http://sourceforge.net/projects/sourcecodepro.adobe/) のインストール。
- 日本語用に[IPAフォント](http://ipafont.ipa.go.jp/ipafont/download.html)のインストール。
=======
- `xelatex` being in path. [TeX Live] 2013 version should be sufficient. Used to compile custom LaTeX environment snippets to PDF.
- `mudraw` being in path. This is a part of [MuPDF]. Used for rendering PDF to a PNG image.
- [Source Sans Pro] and [Source Code Pro] fonts being installed.


[TeX Live]:http://www.tug.org/texlive/
[MuPDF]:http://www.mupdf.com/
[Source Sans Pro]:http://sourceforge.net/projects/sourcesans.adobe/
[Source Code Pro]:http://sourceforge.net/projects/sourcecodepro.adobe/

>>>>>>> english/master
