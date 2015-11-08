class ChargesController < ApplicationController
  def new
    @user = current_user
    @amount = @user.cart.subtotal
  end

  def create
  # Amount in cents
  @user = current_user
  @amount = (@user.cart.subtotal * 100)

  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
