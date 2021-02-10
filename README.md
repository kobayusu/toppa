## TOPPA 目標管理アプリ

## 概要
　筋トレ、貯金、学習など日々の何気ない目標を設定し、進捗状況の記入などを通して自己管理をすることができる

* ユーザー登録
* 目標設定
* 設定した目標の日記

## デプロイ先
  <a hlef="https://toppa29766.herokuapp.com/">toppa</a>

## テスト用アカウント

* アカウント名　test1＠test.com
* パスワード　　password1

## 利用方法
* ユーザー登録を行う
* 自身の目標設定をする
* 日々の進捗状況を目標ごとに記入管理

## 目指した課題解決
  貯金、筋トレ、ダイエットなど日々の活動や成果を記録することで継続する力をつける、目標を見失わないようにする。

## 制作背景
　日々のちょっとした目標や自分の求めることを設定し記録をすることで、目標を見失うことなく走り続けることができると考え、自己管理アプリの制作を考えました。自身でたてた目標を「突破」するという意味をこめ「Toppa」と名付けます。

## 実装した機能
* ユーザー管理機能
* 一覧表示機能
* 目標設定機能
* 目標編集機能
* 目標削除機能
* 目標詳細機能
* カレンダー
* カレンダーを用いた日記機能
* 進捗記録

## 実装予定機能
　ユーザーごとの閲覧制限
　ログインの有無での操作ページ遷移制限
　情報交換のためのコメントやチャット機能

## DEMO
* サインインページ
  <img width="939" alt="toppaサインイン" src="https://user-images.githubusercontent.com/70507300/102573781-94781500-4132-11eb-93cf-351674894503.png">

* 目標設定
  ![bb5e3addbd116deccc5f05b51f6a9c06](https://user-images.githubusercontent.com/70507300/102574324-d190d700-4133-11eb-9939-7c07a0610b88.gif)

* 目標詳細
  ![c63a229518fc256e7852e6f6738f0242](https://user-images.githubusercontent.com/70507300/102574612-8b884300-4134-11eb-92e2-f1d4406aecd9.gif)

## 開発環境
  HTML,CSS,Ruby,Ruby on rails,

# users テーブル
| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| nickname  | string | null: false |
| email     | string | null: false |
| password  | string | null: false |

- has_many :aspiration
- has_many :record

# aspirations テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| detail     | string     | null: false                    |
| start_time | date       | null: false                    |
| category   | string     | null: false                    |
| user       | references | null: false, foreign_key: true |

- belongs_to :user
- has_many :record

# recordsテーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | string     | null: false                    |
| day        | date       | null: false                    |
| user       | references | null: false, foreign_key: true |
| aspiration | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :aspiration
