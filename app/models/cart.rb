class Cart < ActiveRecord::Base
  has_one :user
  has_many :posts


end
