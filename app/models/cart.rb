class Cart < ActiveRecord::Base
  has_many :posts
  belongs_to :user

  def subtotal
    self.posts.each do |item|
      
    end
  end


end
