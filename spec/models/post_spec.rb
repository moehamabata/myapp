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
end