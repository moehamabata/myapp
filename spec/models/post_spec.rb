**1. spec/models/post_spec.rbについて**

目的:rails_helperのモデル単体(Postモデル)の動作をテストするファイル
例:バリデーション、モデルに書いたメソッドの挙動確認、データベースに保存できるか

**2. app/models/post.rbとの違い**
app/models/post.rb → Postモデル本体(データのルールや処理)
- ルールや機能そのもの
spec/models/post_spec.rb → そのモデルが正しく動くか確認するテスト
- そのルールや機能が正しく動くか確認する場所

**3. コード全体**
```bash
require 'rails_helper'

RSpec.describe Post, type: :model do
  it "タイトルがあれば有効" do
    post = Post.new(title:"テストタイトル",content: "本文")
    expect（post）.to be_valid
  end

  it "タイトルがなければ無効" do
    post=Post.new(title: nil,content:"本文")
    expect(post).not_to be_valid
  end
end
```

解説：
①require 'rails_helper':
- テスト環境の読み込み
- RSpecでRailsアプリをテストするための準備ファイル(rails_helper.rb)を読み込んでいる
- これがなければPostモデルは使えない

②RSpec.describe Post,type: :model do
- Postモデルのテストを開始するという宣言
- RSpec.describe → RSpecの基本文法。どのクラスをテストするかを指定する
- Post → 今回テストしたいモデル
- type: :models → Rails特有の「これはモデルのテストである」という印。
