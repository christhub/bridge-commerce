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

  def item_count
    item_count = self.posts.length
    item_count = "cart (" + item_count.to_s + ")"
    return item_count
  end

end
