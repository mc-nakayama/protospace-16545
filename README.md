## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|unique:true, null: false|
|encrypted_password|string|null: false|
|name|string|null: false|
|profile|string|null: false|
|occupation|text|null: false|
|position|text|null: false|

### Association
- has_many: prototypes
- has_many: comments

## prototypesテーブル

|Column|Type|Options|
|-----|-----|-------|
|name|string|null:false|
|copy|text|null:false|
|concept|text|null:false|
|images|text|null:false|
|user_id|reference|null:false, foregin_key:true|

### Association
- belongs_to:user
- has_many:comments

## commentsテーブル
|Column|Type|Options|
|-----|-----|-------|
|content|text|null:false|
|user_id|reference|null:false, foreign_key:true|
|prototype_id|reference|null:false, foreign_key:true|

### Association
- belongs_to: user
- belongs_to: prototype