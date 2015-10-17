class Tag < ActiveRecord::Base
  validates :title, :presence => true

  has_many :posts
end
