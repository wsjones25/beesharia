class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.borrower
      new_company_path
    else
      pages_dashboard_path
    end
  end
end
