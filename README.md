# README
# excursion DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|email|string|null: false|
|password|string|null:false|
|nickname|string||
|image|string||
|birthday|date||

### Association
- has_many :schedules
- has_many :schedules_groups
- has_many :favorite

## schedulesテーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null:false|
|address|string|null: false|
|lodging|string|null:false|
|bookmark|string||
|budget|integer||
|user_id|reference|foreign_key: true|
|images|string||

### Association
- belongs_to :user
- belongs_to :schedule_group
- has_many :favorite

## schedules_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|reference|foreign_key: true|
|schedules_id|reference|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :schedule_group

## favoriteテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false|
|schedules_id|integer|null: false|




### Association
- belongs_to :user
- belongs_to :schedule

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null:false|
|image|string|
|created_at|datetime|null:false|
|update_at|datetime|null:false|


### Association
- belongs_to :schedule_group
