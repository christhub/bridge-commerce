class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true

  has_and_belongs_to_many :tags
  belongs_to :user
  has_many :comments
end
