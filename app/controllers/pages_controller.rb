class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def company_dashboard
  end

  def investor_dashboard
  end

  def dashboard
    @companies = Company.filter(params)
  end
end
