class CartController < ApplicationController
  def index
    if current_user.cart
      @user = current_user
      @cart = @user.cart
      @items = @user.cart.posts
    end
  end

  private
  def cart_params
    params.require(:cart).permit()
  end

end
