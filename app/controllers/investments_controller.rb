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
    @investment = Investment.new(investment_params)
    @investment.user = current_user
    @investment.company = Company.find(params[:company_id])
    if @investment.save
      redirect_to pages_dashboard_path
    end
  end

  private

  def investment_params
    params.require(:investment).permit(:credit_amount)
  end
end
