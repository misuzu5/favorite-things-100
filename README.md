# README


## users

|Column                  |Type     |Options                    |
|------------------------|---------|---------------------------|
| nickname               | string  | null: false               |
| email                  | string  | null: false, unique: true |
| encrypted_password     | string  | null: false               |
| profile                | text    | null: false               |

### Association
- has_many :favorite_things
- has_many :comments



## favorite_things

|Column              |Type        |Options                         |
|--------------------|------------|--------------------------------|
| title              | string     | null: false,                   |
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
| episode            | text       | null: false                    |
| user               | references | null: false, foreign_key: true |
| favorite_thing     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :favorite_thing



