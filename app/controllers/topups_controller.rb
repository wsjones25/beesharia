class TopupsController < ApplicationController
  def index
    @topups = Topups.all
  end

  def new
    @topup = Topup.new
  end

  def create
    @topup = Topup.create(topup_params)
    @topup.user = current_user
    @topup.state = "pending"
    @topup.amount_cents = @topup.amount_cents * 100
    if @topup.save
      redirect_to new_topup_payment_path(@topup)
    else
      raise
      redirect_to pages_dashboard_path, alert: "Something went wrong"
    end
  end

  private

  def topup_params
    params[:topup].permit(:amount_cents)
  end
end
