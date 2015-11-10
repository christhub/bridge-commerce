class Photo < ActiveRecord::Base
  has_attached_file :image, styles: { listing: "500x500>", medium: "300x300>", main: "200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :post
end
