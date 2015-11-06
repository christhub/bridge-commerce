class CartController < ApplicationController
  def index
    if current_user.cart
      @user = current_user
      @cart = @user.cart
      @items = @user.cart.posts
    end
  end

  def update
    @cart = current_user.cart
    @cart.update(cart_params)
    redirect_to cart_index_path
  end

  private
  def cart_params
    params.require(:cart).permit(:address)
  end

end
