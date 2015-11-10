class Photo < ActiveRecord::Base
  has_attached_file :image, styles: { listing: "500x500>", medium: "300x300>", main: "200x200>", thumb: "100x100>" }, url: "/images/:id/:filename", path: ":rails_root/public/images/:id/:filename", default_url: "/images/:style/missing.png"

  do_not_validate_attachment_file_type :image

  belongs_to :post
end
