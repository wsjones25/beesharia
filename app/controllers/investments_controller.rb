class InvestmentsController < ApplicationController

  def index
    @investments = Investment.all
    @balance = user.balance(current_user)
  end

  def show
    @investment = Investment.find(params[:id])
  end

  def new
    @investment = Investment.new
  end

  def create
    @Investment = Investment.create(investment_params)
  end



  private

  def investment_params
    params[:investment].permit(:credits_amount)
  end
end
