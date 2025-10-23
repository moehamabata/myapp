class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
  validates :content, presence: true, length: { maximum: 450 }
end