# FTGL を使ったサンプル

FTGL を使って、3D 空間に日本語を描画しています。

![tmp 0](https://user-images.githubusercontent.com/7226237/222881119-2301304c-a3bb-460a-a487-b2302d6d3bf6.png)

### ビルド

```sh
make
```

なお、新しい libavcodec ではビルドできないようです。

### 実行

引数がわかりにくいので、make で実行できるようにしてあります。

```sh
make run
```

引数の意味については、ソースコードを参照してください。

tmp.mpg というファイルが生成されます。
動画プレイヤーで再生してください。

## ライセンス

スタックオーバーフローの以下のコードを元にしています。

http://stackoverflow.com/questions/3191978/how-to-use-glut-opengl-to-render-to-a-file/14324292#14324292

[Alex319](https://stackoverflow.com/users/130658/alex319) さんの質問に対する、
[Ciro Santilli OurBigBook.com](https://stackoverflow.com/users/895245/ciro-santilli-ourbigbook-com) さんによる回答のコードです。

私が掲載しているコードは GPLv3 です。
