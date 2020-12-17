## TOPPA 目標管理アプリ

## 概要
　筋トレ、貯金、学習など目標を設定し、
　進捗状況の記入などを通して自己管理をすることができる

## テスト用アカウント
  test1
  password1

## 利用方法
　ユーザー登録を行う
　自身の目標設定をする
　日々の進捗状況を目標ごとに記入管理

## 目指した課題解決
  貯金や筋トレ、ダイエット、日々の活動や成果を記録することで継続する力をつける、また達成度をグラフなどで可視化することで、目標を見失わないようにする。

## 実装した機能
  ユーザー管理機能
  カレンダー
  進捗記録

## 実装予定機能
　折れ線グラフ
  
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