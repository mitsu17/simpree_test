class Post < ApplicationRecord
  has_one_attached :clip
  validates :text, presence: true
end
