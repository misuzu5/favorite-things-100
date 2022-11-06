# README

# アプリケーション名
好きなもの100

# アプリケーション概要
自分の好きなものを100個あげ、それぞれを３つのタイプに分けることで自己分析に繋げることができる。

# URL
https://favorite-things-100.herokuapp.com/

# テスト用アカウント
・Basic認証
  ID：admin
  PASS：2222

・ゲストログイン機能あり

・テスト用アカウント
  メールアドレス：test@test.com
  パスワード：test111

# 利用方法

## 好きなもの投稿
１．ヘッダーからユーザー新規登録を行う
２．New Favoriteボタンから、好きなものの内容(タイトル・タイプ・理由・画像)を入力し投稿する
３．できるだけ多くの好きなものを投稿する

## 自己分析する
１．マイページにアクセスする
２．投稿した好きなもののタイプを集計したものが円グラフで表示される
３．自分が投稿した好きなものから、思考や傾向をタイプ分けすることで、自分が何に向いてるのか知ることができる

## 他者の投稿にコメントする
１．一覧ページから投稿をクリックして、好きなものの詳細を見る
２．共感した投稿があれば、コメントでメッセージを送るなど行う

# アプリケーションを作成した背景
  やりたいことがいつまでも見つからない。
  自分にはなんの取り柄もないような気がする。
  そんな不安を感じている人に向けて、「好き」を深めることを通じて「自分が何者か」「何をやりたいのか」を知ることができれば、それが自己分析の第一歩となり、目標を持ったりするきっかけになると思い、このアプリを制作しました。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1nUiysC1OkVcctJ0vS3Qwr1J-HYcJatjiQJb-kjZy-HA/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明
## 1.トップページ
## 2.ユーザー登録機能
## 3.好きなもの投稿機能
## ４.好きなもの編集機能


※	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。

# 実装予定の機能
	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記載。

# データベース設計
	ER図を添付。

# 画面遷移図
	画面遷移図を添付。

# 開発環境
	使用した言語・サービスを記載。

・フロントエンド
・バックエンド
・インフラ
・テスト
・テキストエディタ
・タスク管理

# ローカルでの動作方法
※	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記載。

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



