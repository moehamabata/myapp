require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'タイトルがあれば有効であること' do
    post=Post.new(title: 'テストタイトル',content: '本文')
    expect(post).to be_valid
  end

  it 'タイトルがなければ無効であること' do
    post=Post.new(title: nil,content: '本文')
    expect(post).not_to be_valid
  end
end