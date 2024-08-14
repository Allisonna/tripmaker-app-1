# README
## usersテーブル
| Column              | Type       | Options                        |
| ------------        | ---------- | ------------------------------ |
| nickname            | string     | null: false                    |
| email               | string     | null: false                    |
| encrypted_password  | string     | null: false                    |
| last_name           | string     | null: false                    |
| first_name          | string     | null: false                    |

### Association
- has_many :comments

## commentsテーブル
| Column              | Type       | Options                        |
| ------------        | ---------- | ------------------------------ |
| user_id             | references | null: false, foreign_key: true |
| title               | string     | null: false                    |
| text                | string     | null: false                    |
| spot_id             | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :spot

## spotsテーブル
| Column              | Type       | Options                        |
| ------------        | ---------- | ------------------------------ |
| name                | string     | null: false                    |
| description         | string     | null: false                    |
| category_id         | integer    | null: false                    |

### Association
- has_many :comments
