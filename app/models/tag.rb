class Tag < ActiveRecord::Base
  validates :title, :presence => true

  belongs_to :post
end
