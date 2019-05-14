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
|name|text|null: false, unique: true|

  

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: references|
|text_id|integer|null: false, foreign_key: references|

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text||
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
- has_many :members 
- has_many :groups, through: :members


## members
- belongs_to :user
- belongs_to :group

## messages
- belongs_to :group
- belongs_to :user

## group
- has_many :users, through: :members
- has_many :members
- has_many :messages



--------------------------------------------------
* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
