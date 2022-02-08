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
* has_many :product
* has_many :buying_histories


## product

| Column        | Type   | Options     |
|---------------|--------|-------------|
| name          | string | null: false |
| price         | integer | null: false |
| description   | text   | null: false |
| status        | string | null: false |
| shipping_cost | string | null: false |
| shipping_days | string | null: false |
| prefecture_id | string | null: false |
| category_id   | string | null: false |
| user_id       | string | null: false |
| image_id      | string | null: false |

### Association
* has_many :users
* has_many :destinations


## destination

| Column           | Type   | Options     |
|------------------|--------|-------------|
| post_code        | string | null: false |
| prefecture_id    | string | null: false |
| city             | string | null: false |
| address          | string | null: false |
| building_name    | string |             |
| phone_number     | string | null: false |

### Association
* has many :buying_histories


## card

| Column        | Type   | Options     |
|---------------|--------|-------------|
| name          | string | null: false |
| card_number   | string | null: false |
| security_code | string | null: false |
| valid_thru    | string | null: false |


### Association
* has_many :destinations


## buying_history

| Column          | Type   | Options     |
|-----------------|--------|-------------|
| purchase_id     | string | null: false |
| purchase_date   | string | null: false |
| purchase_source | string | null: false |


### Association
* has_many :users
* has_many :destinations
