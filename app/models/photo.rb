class Photo < ActiveRecord::Base
  has_attached_file :image,
            styles: { listing: "500x500>", medium: "300x300>", main: "200x200>", thumb: "100x100>" },
            default_url: "/images/:style/missing.png",
            :storage => :s3,
            :bucket  => ENV['bridgecommerce'],
            :s3_credentials => {
                    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
                },
                :s3_permissions => 'private',
                :url => ":s3_domain_url"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :post
end
