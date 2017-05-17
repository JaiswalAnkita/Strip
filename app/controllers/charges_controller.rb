class ChargesController < ApplicationController
  def new
  end

  def create
  	@amount = 500

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )
  byebug
  @charge = Charge.new
   @charge.customer_id = customer.id
   @charge.save
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
  end
  def index
  	@stripe_customres = Stripe::Customer.all
  	
  end
end
