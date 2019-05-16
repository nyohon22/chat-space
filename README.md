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
|user|integer|null: false, foreign_key: true|
|text_id|integer|null: false, foreign_key: true|

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|text_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|


## groupテーブル

|Column|Type|Options|
|------|----|-------|
|group_name|integer|null: false|


### Association

## user
- has_many :messages
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
