require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'タイトルが3文字以上であれば有効であること' do
    post = Post.new(title: 'テストタイトル', content: '本文')
    expect(post).to be_valid
  end

  it 'タイトルが3文字未満であれば無効であること' do
    post = Post.new(title: '短い', content: '本文')
    expect(post).not_to be_valid
  end

  it '同じタイトルが存在する場合は無効であること' do
    Post.create(title: 'タイトル', content: '本文') #まず既存の投稿を作る
    duplicate_post = Post.new(title: 'タイトル', content: '別の本文')
    expect(duplicate_post).not_to be_valid
  end

  it '本文が451文字以上の場合は無効であること' do
    long_content = 'あ' * 451
    post = Post.new(title: 'タイトル', content: long_content)
    expect(post).not_to be_valid
  end
end