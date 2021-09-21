# transport interior  
転居をする際の事柄全般を管理することを目的とするアプリケーションです。日程管理、タスク管理、インテリアの配置の確認が出来ます。現在製作途中の為、実装された項目をGIFで記述していきます。  
![demo](https://gyazo.com/31c15dcf381f3cd93e427ff756b2a785.gif)


# URL  
デプロイ完了後記載致します。


# テスト用アカウント  
デプロイ完了後記載致します。


# 利用方法  
デプロイ完了後記載致します。


# 目指した課題解決  
転居が頻繁で、効率よく転居を済ませたい単身者をターゲットに、作業漏れを防ぎ円滑な転居完了を目的とします。


# 洗い出した用件  
・ユーザー毎の管理の為ログイン機能の実装。  
・購入やレンタルしなければならない家具の漏れがないようにする機能。  
・業者やインテリア全般の到着期日を管理。  
・期日毎に検索、確認。  
・掛かっている経費を管理。  
・やらなければならないこと(must)、できればやりたいこと(want)を分けて管理。  
・家具配置をする際、レイアウトを管理。  
・タスク等が完了した際に視覚的に分かりやすい工夫。  
・スマートフォンでも見やすい表示。  


# 実装した機能についての画像やGIFおよびその説明  
アイテム追加機能  
![demo]
(https://gyazo.com/fa2c6130e27e8d668d21f742a581bf8f.gif)

検索機能(カテゴリーと期日で検索出来ます)  
![demo]
(https://gyazo.com/2f17b8feca59e821d2ff1829be98fe53.gif)  
![demo]
(https://gyazo.com/9cb0d8980a1d8a51fc7cd31a80f9cd9a.gif)  

予定管理機能(チェックするボックスによって表示位置が変わります)  
![demo]  
(https://gyazo.com/678ac99a6c68bfed14b7c267eb362672.gif)  
![demo]
(https://gyazo.com/102b0d9610e5b77956d08cd0750ac6d5.gif)  

間取り機能(平面図を添付し、配置場所を軸で管理します。メッセージ機能含み実装途上)  
![demo]  
(https://gyazo.com/ee8109d74f59698e9ed2bcf0ab44f3fb.gif)  

# 実装予定の機能  
・家具配置をする際、レイアウトを確認。(現在実装中)  
・ユーザー毎の管理の為ログイン機能の実装。  
・タスク等が完了した際に視覚的に分かりやすい工夫。  
・スマートフォンでも見やすい表示。(一部実装済)  
  
※html/cssの修正は順次行っていきます。  


# データベース設計  
https://gyazo.com/e7d5249bdf94d759bdec18e27e7dbf11


# ローカルでの動作方法  
※Mac使用の際です。  
% git clone <リモートリポジトリのURL>  
% cd アプリケーションのディレクトリ  
% bundle install  
% yarn install  
% rails db:create  
% rails db:migrate  
% rails s  
  
Mac OS Catalina 10.15.6  ruby ver2.6.5 により作成。  


# テーブル設計  

## users テーブル  

| Column              | Type   | Options                   |
| ------------------- | ------ | ------------------------- |
| nickname            | string | null: false               |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |
| birth               | date   | null: false               |


### Association

- has_many :items
- has_many :posts
- has_many :rooms


## item テーブル

| Column            | Type          | Options     |
| ----------------- | ------------- | ----------- |
| image             | ActiveStorage | null: false |
| category          | integer       | null: false |
| name              | string        | null: false |
| price             | integer       | null: false |
| delivery_month_id | integer       | null: false |
| delivery_day_id   | integer       | null: false |
| delivery_time_id  | integer       | null: false |
| detail            | text          |             |
| user              | references    |             |


### Association

- belongs_to :user


## post テーブル

| Column            | Type          | Options     |
| ----------------- | ------------- | ----------- |
| format            | integer       | null: false |
| content           | text          | null: false |
| user              | references    |             |



### Association

- belongs_to :user


## room テーブル

| Column            | Type          | Options     |
| ----------------- | ------------- | ----------- |
| image             | ActiveStorage |             |
| beside_id         | integer       | null: false |
| vertical_id       | integer       | null: false |
| message           | text          | null: false |
| user              | references    |             |


### Association

- belongs_to :user
