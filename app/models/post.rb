class Post < ActiveRecord::Base
  has_attached_file :image, styles: { listing: "500x500>", medium: "300x300>", main: "200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  geocoded_by :address
  after_validation :geocode

  validates :title, :presence => true
  validates :content, :presence => true

  has_and_belongs_to_many :tags
  belongs_to :user
  belongs_to :cart
  has_many :comments

  # accept_nested_attributes_for :comments, :allow_destroy => true

end
