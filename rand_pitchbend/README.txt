﻿・このスクリプトは何？
UVIのFalcon2のScript Processer用のスクリプトです。ピッチベンドのピッチを、一音毎に微妙に音程をずらします。
UVIのMello用に開発したもので、MelloがモデルとしているMellotronの、ピッチノブによるピッチベンドの際の挙動を再現しようとするものです。

Mellotronはその構造上、ピッチノブでのピッチベンドの際は均等にピッチが変化しません。それは特にコード弾きながらの場合など顕著で、コードの各音が同じカーブで変化しないため、独特の響きのピッチベンドが発生します。

それを実現するため、このスクリプトはピッチベンドの度合いを一音ずつランダムにずらしていきます。そのためコードにピッチベンドをかけるとMellotronのようにコードの響きがdetuneしながらピッチ変化するようになります。
基本Mello用ですが、いわゆるセクション組む系のホーンやストリングス系の音源と組み合わせても良いかもしれません（未テスト）。

・使い方
1.ダウンロードしたrand_pitchbend.luaファイルを、PCの任意の場所に置く。
2.Falcon 2を立ち上げて、Melloをロードする（「Strings」がお勧め）。
3.「EVENTS」タブに切り替え
4.右上「＋」アイコンから「Script Processer」→「Default」をロード。
5.Script processerの左上のフォルダのアイコンからこのスクリプトを選択。
6.あとはキーボードでEmを弾きながらの ピッチベンドノブを操作。

・コントロール説明
* Unstability
ピッチベンドのずれ具合をコントロールします。あまり大きくすると、ピッチベンド下げてるのにピッチが露骨に上がったりしちゃうのでほどほどに。

* PichbndRng
PitchBend Range、ピッチベンドの最大音高変化量です。単位は半音。

Falcon 1でも動くと思うが未検証
