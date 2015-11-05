class Tag < ActiveRecord::Base
  validates :name, presence: true
  has_many :preferences
  has_many :tags, through: :preferences
  has_and_belongs_to_many :items
  has_and_belongs_to_many :posts
end
