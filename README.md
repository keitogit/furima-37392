# DB設計

## users

| Column           | Type   | Options     |
|------------------|--------|-------------|
| nickname         | string | null: false |
| email            | string | null: false |
| password         | string | null: false |
| family_name      | string | null: false |
| first_name       | string | null: false |
| family_name_kana | string | null: false |
| first_name_kana  | string | null: false |
| birth_day        | date   | null: false |

### Association
* has_many :product
* has_many :destination


## product

| Column        | Type   | Options     |
|---------------|--------|-------------|
| name          | string | null: false |
| price         | string | null: false |
| description   | string | null: false |
| status        | string | null: false |
| shipping_cost | string | null: false |
| shipping_days | string | null: false |
| prefecture_id | string | null: false |
| category_id   | string | null: false |
| user_id       | string | null: false |
| image_id      | string | null: false |

### Association
* has_many :users
* has_many :destination


## destination

| Column           | Type   | Options     |
|------------------|--------|-------------|
| family_name      | string | null: false |
| first_name       | string | null: false |
| family_name_kana | string | null: false |
| first_name_kana  | string | null: false |
| post_code        | string | null: false |
| prefecture       | string | null: false |
| city             | string | null: false |
| address          | string | null: false |
| building_name    | string | null: false |
| phone_number     | string | null: false |

### Association
* has many :product


## card

| Column        | Type   | Options     |
|---------------|--------|-------------|
| name          | string | null: false |
| card_number   | string | null: false |
| security_code | string | null: false |
| valid_thru    | string | null: false |


### Association
* has_many :destination