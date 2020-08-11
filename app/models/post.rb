class Post < ApplicationRecord
  has_one_attached :clip
  validates :title, presence: true
end
