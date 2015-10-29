class Cart < ActiveRecord::Base
  has_many :posts
  belongs_to :user

  def subtotal
    subtotal = 0
    self.posts.each do |item|
      subtotal += item.price
    end
    return subtotal
  end


end
