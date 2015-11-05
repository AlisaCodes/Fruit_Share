class Item < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :user
  validates :name, :quantity, :description, presence: true
end
