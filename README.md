HaxeManual 日本語版
==========

このプロジェクトは[Haxeマニュアル]( https://github.com/HaxeFoundation/HaxeManual/ )の日本語訳です。

貢献するには.texファイルを編集してください。 (.mdファイルは、.texから生成されます)

コマンドラインから .pdf をビルドするには、 `latexmk -xelatex HaxeDoc.tex` を実行してください。
最新版の[TeX Live]にlatexmkは含まれるはずです。必要なパッケージは以下の通りです。

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


- `xelatex` にパスを通す。[Tex Live]のバージョン2013を使えば良いです。カスタムしたLaTeXの環境の断片を、PDFに変換します。
- `mudraw` にパスを通す。[MuPDF]に含まれます。PDFをpngの画像に変換するのに使われます。
- [Source Sans Pro]と[Source Code Pro]のインストール。
- `pandoc`にパスを通す。*.epub*ファイルの出力に使います。
- `ebook-convert` にパスを通す。 これは[calibre]の一部です。*.epub*を*.mobi*に変換するのに使います。
- 日本語用に[IPAフォント]のインストール。

[TeX Live]:http://www.tug.org/texlive/
[MuPDF]:http://www.mupdf.com/
[calibre]:http://calibre-ebook.com/
[Source Sans Pro]:http://sourceforge.net/projects/sourcesans.adobe/
[Source Code Pro]:http://sourceforge.net/projects/sourcecodepro.adobe/
[IPAフォント]:http://ipafont.ipa.go.jp/ipafont/download.html
