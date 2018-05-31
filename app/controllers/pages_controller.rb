class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def company_dashboard
    # Compute the total required funds
    @required_funds = current_user.companies.first.required_funds

    # Compute the amount pledged

  end

  def investor_dashboard

  end

  def dashboard
    # @companies = Company.filter(params)
    @companies = Company.all
    @topup = current_user.topups
    @topup = Topup.new
  end
end
