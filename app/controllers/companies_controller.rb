class CompaniesController < ApplicationController
  before_action :set_companyinfo, only: [:edit, :update]



  def index
    @companies = Company.all
  end

  def edit
  end

  def show
    @company = Company.find_by(user_id: current_user)
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user

    if @company.company_number
      infos = get_info_from_api(@company.company_number, @company)
      @company.update_attributes(infos)
    end

    if @company.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  def update
    if @company.update(company_params)
      redirect_to company_path(@company)
    else
      render :edit
    end
  end

  # def destroy
  #   @company.destroy
  #   redirect_to new_company_path, notice: 'Profile was successfully deleted.'
  # end





private

  def get_info_from_api(company_number, company)
    require 'companies_house/client'
    client = CompaniesHouse::Client.new(api_key: ENV['COMPANIES_HOUSE_API_KEY'])
    profile = client.company(company_number)
    # raise
    infos = {}
    infos[:company_name] = profile['company_name'] if company.company_name.blank?
    infos[:office_address] = "#{profile['registered_office_address']['address_line_1']}, #{profile['registered_office_address']['locality']}, #{profile['registered_office_address']['postal_code']}" if company.office_address.blank?

    return infos
  end

  def set_companyinfo
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:company_number, :company_name, :director_names,:years_credit_history,:business_category,:office_address, :last_year_ebit, :last_year_interest, :last_year_debt, :last_year_assets, :loan_type,:borrowing_length,:use_of_funds_description,:required_funds, :photo)
  end






end
