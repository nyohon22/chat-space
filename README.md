# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization


## userテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: references|
|mailaddres|text|null: false, foreign_key: references, unique: true|
|name|text|null: false, unique: true|


## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: references|
|text_id|integer|null: false, foreign_key: references|

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string||
|text_id|integer|null: false, foreign_key: references|
|group_id|integer|null: false, foreign_key: references|


## groupテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: references|
|group_name|integer|null: false|
|group_id|integer|null: false, foreign_key: references|


### Association

## user
- belongs_to :members
- has_many : messages


## members
- belongs_to :user
- has_many : messages

## messages
- belongs_to :members
- belongs_to :user


## group
- has_many :members
- has_many :messages



--------------------------------------------------
* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
