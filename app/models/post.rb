class Post < ApplicationRecord
  validates :title,presence: true
end

コードの意味:
1. validates :title
- Postモデルのtitle(タイトル)カラムに対してバリデーションを設定する
- バリデーション → データが正しいかどうかを確認する

2. presence: true
- 空では反応しないという意味
- titleがnilまたは空文字の場合は保存ができないようにする
