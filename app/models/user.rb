class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :presence => true

  # geocoded_by :address
  # after_validation :geocode, :if => :address_changed?

  has_one :cart
  has_many :posts
  has_many :comments
end
