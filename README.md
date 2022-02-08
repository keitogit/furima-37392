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
| status        | string | null: false |
| shipping_cost | integer | null: false |
| shipping_days | string | null: false |
| prefecture_id | integer | null: false |
| category_id   | string | null: false |
| user          | references | null: false |

### Association
* has_many :users
* has_many :destinations


## destinations

| Column           | Type   | Options     |
|------------------|--------|-------------|
| post_code        | string | null: false |
| prefecture_id    | integer | null: false |
| city             | string | null: false, foreign_key: true|
| address          | string | null: false, foreign_key: true|
| building_name    | string | foreign_key: true             |
| phone_number     | string | null: false, foreign_key: true|

### Association
* has many :buying_histories


## buying_history

| Column          | Type   | Options     |
|-----------------|--------|-------------|
| purchase_id     | string | null: false |
| purchase_date   | string | null: false |
| purchase_source | string | null: false |


### Association
- belongs_to :products
- belongs_to :users
- has_one :destinations
