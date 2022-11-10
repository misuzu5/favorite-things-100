# README

# アプリケーション名
好きなこと100

# アプリケーション概要
自分の好きなことを動詞で100個あげ、それぞれを３つのタイプに分けることで自己分析に繋げることができます。

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

## 好きなことを投稿します
１.トップページのヘッダーからユーザー新規登録を行います  
２.「New Favorite」ボタンから、好きなことの内容(タイトル・タイプ・理由・画像)を入力し、投稿します  
３.できるだけ多くの好きなことを投稿します

## 自己分析をします
１.マイページにアクセスします  
２.投稿した好きなことのタイプを集計したものが円グラフで表示されます  
３.自分が投稿した好きなことから、傾向を分析することで、自分が何に向いてるのか知ることができます

## 他者の投稿にコメントできます
１.投稿をクリックして、好きなことの詳細を見ることができます  
２.共感した投稿や伝えたい事があれば、コメントでメッセージを送れます

# アプリケーションを作成した背景
  「やりたいことがいつまでも見つからない。」  
  「自分にはなんの取り柄もないような気がする。」  
  そんな不安を感じている人に向けて、「好き」を深めることを通じて「自分が何者か」「何をやりたいのか」を知ることができれば、それが自己分析の第一歩となり、目標を持ったりするきっかけになると思い、このアプリを制作しました。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1nUiysC1OkVcctJ0vS3Qwr1J-HYcJatjiQJb-kjZy-HA/edit#gid=982722306)

# 実装した機能についての画像やGIFおよびその説明
## 1.トップページ
ヘッダーにはログインに関するボタンと、各ページへ遷移するリンク・検索フォームを設けています。
![トップページ](https://gyazo.com/ebff6b881acb58333c443b8546107683.gif)

## 2.ユーザー登録機能
ユーザー登録することで好きなものの投稿・コメントができるようになります。  
ユーザー登録していない人でも投稿の詳細は見ることができます。
![ユーザー登録機能](https://gyazo.com/b53f047ba13595c84c48b603872b2cb1.gif)

## 3.好きなこと投稿機能
ユーザーは自身の好きなことを理由・画像などを添えて投稿することができます。  
画像はプレビューで見ることができます。
![好きなこと投稿機能](https://gyazo.com/bd4759460b7823f49311023bf98ec1c3.gif)

## ４.好きなこと編集機能
自身の投稿であれば、投稿内容を編集することができます。  
投稿時の内容が入力された状態から編集することができます。
![好きなこと編集機能](https://gyazo.com/fe7cc9dcc957d4b497b9d0bb480dd939.gif)

## 5.好きなこと削除機能
自身の投稿であれば投稿を削除することができます。  
誤操作防止のために、削除確認のアラートを設置しています。
![好きなこと削除機能](https://gyazo.com/ab1323249316598c909a321cd65745ec.gif)

## 6.好きなこと検索機能
ヘッダーの検索フォームに任意のワードを入力して投稿を絞り込むことができます。  
タイトルと理由の中にそのワードが含まれれば表示されます。
![好きなこと検索機能](https://gyazo.com/5eed001d55738fa2a64d2d75fe280cf5.gif)

## 7.コメント投稿機能
他者の投稿にコメントすることができます。  
コメントは投稿日時が新しいものが上から順に表示されます。
![コメント投稿機能](https://gyazo.com/42502d88f61e13ddc5aee18e7e5a4cec.gif)

## 8.マイページ詳細機能
ユーザーの情報が表示されます。  
プロフィールタブにはユーザー情報と、好きなもののタイプから導き出された分析結果が表示されます。  
リスト100タブ・好きなこと一覧タブにはユーザーの投稿が一覧で表示されます。
![マイページ詳細機能](https://gyazo.com/850657c275d53ad25ff47cc91e1573f7.gif)

## 9.ユーザー情報編集機能
ユーザー情報編集タブから、ユーザー情報を編集することができます。  
登録時の内容が入力された状態から編集することができます。  
![ユーザー情報編集機能](https://gyazo.com/0800490c31002ac0149a597e98d472f0.gif)

## 10.ユーザー情報削除機能
アカウント削除タブから、アカウントを削除することができます。  
誤操作防止のために、削除確認のアラートを設置しています。
![ユーザー情報削除機能](https://gyazo.com/1324d4a08bcb426e3e09699ab55c537b.gif)

## 11.ゲストログイン機能
ニックネームやメールアドレスを登録せずに、ゲストユーザーとしてログインすることができます。  
投稿やコメントなど、このアプリをお試しで体験することができます。
![ゲストログイン機能](https://gyazo.com/ba4a4d90f9685290672ff5228f5ee64a.gif)

# 実装予定の機能
- コメント投稿 非同期通信(Ajax)
- コメント編集・削除機能
- 自動ログイン(Remember me)機能
- APIログイン機能
- マインドマップ作成
- パンくずリスト機能(gretel)
- 複数枚画像投稿機能
- いいね機能(Ajax)
- フォロー機能(Ajax)
- 通知機能
- タグ付機能
- SNS共有機能

# データベース設計
![ER図](https://gyazo.com/d8bb3396b947f1050da25d52abb4ad73.png)

# 画面遷移図
![画面遷移図](https://gyazo.com/f18359acbd525af62bd3416f1310e7d5.png)

# 開発環境
- Ruby 2.6.5  
- Ruby on Rails 6.0.0
- MySQL
- AWS
- Rubocop
- VS Code
- GitHub「プロジェクトボード」

# ローカルでの動作方法
以下のコマンドを順に実行して下さい。

	% git clone https://github.com/misuzu5/favorite-things-100  
	% cd favorite-things-100  
	% bundle install  
	% yarn install

# 工夫したポイント
Bootstrapを使ったCSSのフレームワークに力を入れました。トップページにスライドショーを入れたり、マイページのタブ切り替えで見た目をスッキリさせました。投稿一覧ページは重たくなりがちなのでページネーション機能(kaminari)を導入して、10カット毎にページが移動できるようにしました。タイプの集計をするのにchartkickの円グラフを用いたことで、視覚的に票数をわかりやすくしたところもポイントです。



# テーブル設計

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



