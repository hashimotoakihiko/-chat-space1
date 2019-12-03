# chat-space  DB設計

## usersテーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| password | string | null: false |
| email    | string | null: false |
### Association
- has_many :groups, through: :users_groups
- has_many :users_groups
- has_many :messages



## groupsテーブル
| Column | Type    | Options          |
| ------ | ------- | -------          |
| name   | integer |  null: false     |
### Association
- has_many :users, through: :users_groups
- has_many :messages
- has_many :users_groups

## users_groupsテーブル
| Column   | Type    | Options                        |
| -------- | ------- | ------------------------------ |
| user_id  | integer | null: false, foreign_key: true |
| group_id | integer | null: false, foreign_key: true |
### Association
- belongs_to :group
- belongs_to :user

## messagesテーブル
| Column   | Type    | Options                        |
| -------- | ------- | ------------------------------ |
| user_id  | integer | null: false, foreign_key: true |
| group_id | integer | null: false, foreign_key: true |
| imege    | string  |                                |
| text     | string  |                                |

### Association
- belongs_to :user
- belongs_to :group