# DB設計

## users

| Column            | Type   | Options                  |
|-------------------|--------|--------------------------|
| nickname          | string | null: false              |
| email             | string | null: false, unique: true|
| encrypted_password| string | null: false              |
| family_name       | string | null: false              |
| first_name        | string | null: false              |
| family_name_kana  | string | null: false              |
| first_name_kana   | string | null: false              |
| birth_day         | date   | null: false              |

### Association
* has_many :products
* has_many :buying_histories


## products

| Column        | Type   | Options     |
|---------------|--------|-------------|
| name          | string | null: false |
| price         | integer | null: false |
| description   | text   | null: false |
| status_id        | integer | null: false |
| shipping_cost_id | integer | null: false |
| shipping_days_id | integer | null: false, foreign_key: true |
| prefecture_id | integer | null: false, foreign_key: true |
| category_id   | integer | null: false, foreign_key: true |
| user_id       | references | null: false, foreign_key: true|

### Association
- belongs_to :user
- has_one :buying_history


## destinations

| Column           | Type   | Options     |
|------------------|--------|-------------|
| post_code        | string | null: false |
| prefecture_id    | integer | null: false |
| city             | string | null: false, foreign_key: true|
| address          | string | null: false, foreign_key: true|
| building_name    | string | foreign_key: true             |
| phone_number     | string | null: false, foreign_key: true|
| buying_history   | references | null: false , foreign_key: true |

### Association
belongs_to buying_history


## buying_histories

| Column          | Type   | Options     |
|-----------------|--------|-------------|
| item    | references  | null: false , foreign_key: true |
| user    | references  | null: false , foreign_key: true |


### Association
- belongs_to :product
- belongs_to :user
- has_one :destination
