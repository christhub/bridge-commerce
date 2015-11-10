class Post < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  validates :title, :presence => true
  validates :content, :presence => true

  has_and_belongs_to_many :tags
  belongs_to :user
  belongs_to :cart
  has_many :comments, :dependent => :destroy
  has_many :photos, :dependent => :destroy

end
