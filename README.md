# Coffee-Snippet

## Description

Coffee Scriptで静的HTMLを表示するExpressサーバを書いた

## Usage

srcフォルダのapp.coffeeを編集して、同フォルダにindex.htmlとabout.htmlを配置して、以下のcoffeeコマンドでデバッグ実行。

```
$ cd src
$ coffee app.coffee
listening on *: 3000
```

ブラウザより、http://localhost:3000 を開く

## js compile

srcフォルダから抜けて、以下のcoffeeコマンドでコンパイル。libフォルダに生成されたapp.jsをnodeコマンドで実行。

### ※ 静的ファイルもコピーする必要あり。

```
$ cd ..
$ coffee -c -o lib src
$ cp src/*.html lib/
$ cd lib/
$ node app.js
listening on *: 3000
```
