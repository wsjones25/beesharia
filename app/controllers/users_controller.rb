class UsersController < ApplicationController

  def index
    if current_user.borrower
      redirect_to new_company_path(current_user)
    else
      redirect_to companies_path
    end
  end





end
