# README

# アプリケーション名
好きなこと100

# アプリケーション概要
自分の好きなことを動詞で100個あげ、それぞれを３つのタイプに分けることで自己分析に繋げることができる。

# URL
https://favorite-things-100.herokuapp.com/

# テスト用アカウント
- Basic認証  
・ID：admin  
・PASS：2222

- ゲストログイン機能あり

- テスト用アカウント  
・メールアドレス：test@test.com  
・パスワード：test111

# 利用方法

## 好きなこと投稿
１.ヘッダーからユーザー新規登録を行う  
２.New Favoriteボタンから、好きなことの内容(タイトル・タイプ・理由・画像)を入力し投稿する  
３.できるだけ多くの好きなことを投稿する

## 自己分析する
１.マイページにアクセスする  
２.投稿した好きなことのタイプを集計したものが円グラフで表示される  
３.自分が投稿した好きなことから、思考や傾向をタイプ分けすることで、自分が何に向いてるのか知ることができる

## 他者の投稿にコメントする
１.一覧ページから投稿をクリックして、好きなことの詳細を見る  
２.共感した投稿があれば、コメントでメッセージを送るなど行う

# アプリケーションを作成した背景
  やりたいことがいつまでも見つからない。  
  自分にはなんの取り柄もないような気がする。  
  そんな不安を感じている人に向けて、「好き」を深めることを通じて「自分が何者か」「何をやりたいのか」を知ることができれば、それが自己分析の第一歩となり、目標を持ったりするきっかけになると思い、このアプリを制作しました。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1nUiysC1OkVcctJ0vS3Qwr1J-HYcJatjiQJb-kjZy-HA/edit#gid=982722306)



# 実装した機能についての画像やGIFおよびその説明
## 1.トップページ
ヘッダーにはログインに関するボタンと、各ページへ遷移するリンク・検索フォームを設けています。
![トップページ](https://gyazo.com/ebff6b881acb58333c443b8546107683.gif)

## 2.ユーザー登録機能
ユーザー登録することで好きなものの投稿・コメントができるようになります。(ユーザー登録していない人でも投稿の詳細は見ることができます。)
![ユーザー登録機能](https://gyazo.com/b53f047ba13595c84c48b603872b2cb1.gif)

## 3.好きなこと投稿機能
![好きなこと投稿機能](https://gyazo.com/bd4759460b7823f49311023bf98ec1c3.gif)

## ４.好きなこと編集機能
![好きなこと編集機能](https://gyazo.com/fe7cc9dcc957d4b497b9d0bb480dd939.gif)

## 5.好きなこと削除機能
![好きなこと削除機能](https://gyazo.com/ab1323249316598c909a321cd65745ec.gif)

## 6.好きなこと検索機能
![好きなこと検索機能](https://gyazo.com/5eed001d55738fa2a64d2d75fe280cf5.gif)


## 7.コメント投稿機能
![コメント投稿機能](https://gyazo.com/65f8c6a13820cc8e6e138c5360356048.gif)

## 8.マイページ詳細機能
![マイページ詳細機能](https://gyazo.com/850657c275d53ad25ff47cc91e1573f7.gif)

## 9.ユーザー情報編集機能
![マイページ詳細機能](https://gyazo.com/0800490c31002ac0149a597e98d472f0.gif)

## 10.ユーザー情報削除機能
## 11.ゲストログイン機能
![マイページ詳細機能](https://gyazo.com/ba4a4d90f9685290672ff5228f5ee64a.gif)


※	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。

# 実装予定の機能
	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記載。

# データベース設計
![ER図](https://gyazo.com/d8bb3396b947f1050da25d52abb4ad73.png)

# 画面遷移図
![画面遷移図](https://gyazo.com/f18359acbd525af62bd3416f1310e7d5.png)

# 開発環境
	使用した言語・サービスを記載。

- フロントエンド  
- バックエンド  
- インフラ  
- テスト  
- テキストエディタ  
- タスク管理

# ローカルでの動作方法
以下のコマンドを順に実行。

	% git clone https://github.com/misuzu5/favorite-things-100  
	% cd favorite-things-100  
	% bundle install  
	% yarn install

# 工夫したポイント
※	制作背景・使用技術・開発方法・タスク管理など、企業へＰＲしたい事柄を記載。



## users

|Column                  |Type     |Options                    |
|------------------------|---------|---------------------------|
| nickname               | string  | null: false               |
| email                  | string  | null: false, unique: true |
| encrypted_password     | string  | null: false               |
| profile                | text    | null: false               |
| image                  | string  |                           |


### Association
- has_many :favorite_things
- has_many :comments



## favorite_things

|Column              |Type        |Options                         |
|--------------------|------------|--------------------------------|
| title              | string     | null: false,                   |
| type_id            | integer    | null: false,                   |
| reason             | string     | null: false                    |
| emotion            | string     |                                |
| appeal_point       | string     |                                |
| episode            | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments



## comments

|Column              |Type        |Options                         |
|--------------------|------------|--------------------------------|
| text               | text       | null: false                    |
| user               | references | null: false, foreign_key: true |
| favorite_thing     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :favorite_thing



