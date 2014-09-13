HaxeManual 日本語版
==========

このプロジェクトに貢献するには.texファイルを編集してください。 (.mdファイルは、.texから生成されます)


マークダウンの生成
-------------------

マークダウンの生成は、convertフォルダ内のconvert.hxmlをコンパイルすることによって行います。

また、以下の`-D`コンパイルオプションを使うことで追加の機能が利用できます。

- `-D compileEnv`
LaTeXの環境から画像を生成します。ただし、すでにある画像の生成をスキップします。
マークダウンから、画像(特にflowchat環境のような画像)を生成するのはあまりにも複雑です。

- `-D recompileEnv`
出力先にすでに存在する画像に対しても生成を行います。(convertの開発時に最も有用です。)

- `-D keepEnvPDF`
生成されたPDFファイルを消去せずに残します。画像の隣に同名で配置されます。

- `-D keepEnvTemp`
LaTeXのコンパイル時の一時フォルダを消去せずに残します。特に開発や、

`compileEnv`に必要なもの
-----------------------------

`compileEnv`での書き出しには、以下が必要になります。

- `xelatex` にパスを通す。[TexLive](http://www.tug.org/texlive/) のバージョン2013を使えば良いです。カスタムしたLaTeXの環境の断片を、PDFに変換します。
- `mudraw` にパスを通す。[MuPDF](http://www.mupdf.com/)に含まれます。PDFをpngの画像に変換するのに使われます。
- [Source Sans Pro](http://sourceforge.net/projects/sourcesans.adobe/) と [Source Code Pro](http://sourceforge.net/projects/sourcecodepro.adobe/) のインストール。
