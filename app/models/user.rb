class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :preferences
   has_many :tags, through: :preferences
   has_many :items
   has_many :posts
   has_many :comments
   validates :name, presence: true
end
