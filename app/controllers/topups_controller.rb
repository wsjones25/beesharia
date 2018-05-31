class TopupsController < ApplicationController
  def index
    @topups = Topups.all
  end

  def new
    @topup = Topup.new
  end

  def create
    @topup = Topup.create(topup_params)

  end

  private

  def topup_params
    params[:topup].permit(:amount)
  end
end
