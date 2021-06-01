## Users

| Column              | Type   | Options                  |
| ------------------- | ------ | ------------------------ |
| name                | string | null:false               |
| email               | string | unique: true, null:false |
| encrypted_password  | string | null:false               |

### Association

- has_many :posts
- has_many :comments


## Posts

| Colum          | Type          | Options           |
| -------------- | --------------| ----------------- |
| phone_mane_id  | integer       | null:false        |
| phone_price    | integer       | null:false        |
| plan_name_id   | string        | null:false        |
| option_name_id | integer       | null:false        |
| dis_name_id    | integer       | null:false        |
| price          | integer       | null:false        |
| post_name      | string        | null:false        |
| text           | text          | null:false        |
| user           | references    | foreign_key: true |

### Association

- has_many :phones
- has_many :plans
- has_many :options
- has_many :discounts
- has_many :comments

## Phones

| Colum       | Type          | Options           |
| ----------- | --------------| ----------------- |
| phone_name  | string        | null:false        |
| maker       | string        | null:false        |
| ram         | integer       | null:false        |
| rom         | integer       | null:false        |
| camera_1    | integer       | null:false        |
| camera_2    | integer       |
| camera_3    | integer       |
| camera_in   | integer       | null:false        |

### Association

- belongs_to :post

## Plans

| Colum          | Type          | Options           |
| -------------- | --------------| ----------------- |
| plan_name      | string        | null:false        |
| price          | integer       | null:false        |

- belongs_to :post

## Options

| Colum       | Type          | Options           |
| ----------- | --------------| ----------------- |
| option_name | string        | null:false        |
| price       | integer       | null:false        |

- belongs_to :post

## Discounts
| Colum       | Type          | Options           |
| ----------- | --------------| ----------------- |
| dis_name    | string        | null:false        |
| price       | integer       | null:false        |

- belongs_to :post


## Comments

| Column    | Type          | Options           |
| --------- | ------------- | ----------------- |
| text      | text          | null:false        |
| user      | references    | foreign_key: true |
| post      | references    | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post