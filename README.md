# アプリケーション概要
このアプリケーションでできることを記述。

# URL
デプロイ済みのURLを記述。デプロイが済んでいない場合は、デプロイが完了次第記述すること。

# テスト用アカウント
ログイン機能等を実装した場合は、ログインに必要な情報を記述。またBasic認証等を設けている場合は、そのID/Passも記述すること。

# 利用方法
このアプリケーションの利用方法を記述。

# 目指した課題解決
このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記述。

# 洗い出した用件
スプレッドシートにまとめた要件定義を記述。

# 実装した機能についての画像やGIFおよびその説明
実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFはGyazoGIFで撮影すること。

# 実装予定の機能
洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。

# データベース設計
ER図等を添付。

# ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。

# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------  | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |

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
