class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :comments
  validates :title, :body, presence: true
end
