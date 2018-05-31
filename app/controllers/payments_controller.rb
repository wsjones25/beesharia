class PaymentsController < ApplicationController
  before_action :set_topup

  def new
  end

  def create
  customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @topup.amount_cents,
    description:  "Add funds to balance",
    currency:     @topup.amount.currency
  )

  @topup.update(payment_info: charge.to_json, state: 'paid')
  redirect_to pages_dashboard_path

rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to pages_dashboard_path
end

private

  def set_topup
    @topup = current_user.topups.where(state: 'pending').find(params[:topup_id])
  end
end

