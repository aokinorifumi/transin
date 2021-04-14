# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------  | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |

### Association

- has_many :items


## item テーブル

| Column     | Type          | Options     |
| ---------- | ------------- | ----------- |
| image      | string        | null: false |
| name       | string        | null: false |
| price      | integer       |             |
| delivery   | integer       | null: false |
| detail     | text          |             |
| user       | references    |             |

### Association

- belongs_to :user
