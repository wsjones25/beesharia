class CompaniesController < ApplicationController
  skip_before_action :verify_authenticity_token
  protect_from_forgery prepend: true, with: :exception
  before_action :authenticate_user!
  before_action :set_companyinfo, only: [:edit, :update]

  def index
    @companies = Company.all
  end

  def edit
  end

  def show
    @company = Company.find(params[:id])
    @investment = Investment.new
    @total_funded = @company.investments.map(&:credit_amount).sum
    @funded_percentage = (@total_funded.fdiv(@company.required_funds)) * 100
  end

  def funded_percent(total_funded, required_amount)
    @funded_percent = (total_funded / required_amount)*100
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user

    # if @company.company_number
    #   infos = get_info_from_api(@company.company_number, @company)
    #   @company.update_attributes(infos)
    # end

    ebit = @company.last_year_ebit
    interest = @company.last_year_interest
    calc_risk_score(ebit, interest)
    calc_expected_return(ebit,interest)

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

  def calc_risk_score(ebit, interest)
    int_coverage = ebit/interest
    if int_coverage  >= 0.05 && int_coverage <= 0.3
      @company.risk_score = "High Risk"
    elsif int_coverage >0.3 && int_coverage <= 1.2
      @company.risk_score = "Medium Risk"
    elsif int_coverage >1.2
      @company.risk_score = "Low Risk"
    end
  end

  def calc_expected_return(ebit, interest)
    uk_gilt_10 = 0.013
    int_coverage = ebit/interest
    if int_coverage <= 0.05
      @company.loan_rate = (uk_gilt_10 + 0.186)*100
    elsif int_coverage > 0.05 && int_coverage <= 0.1
      @company.loan_rate = (uk_gilt_10 + 0.1395)*100
    elsif int_coverage > 0.1 && int_coverage <= 0.2
      @company.loan_rate = (uk_gilt_10 + 0.1063)*100
    elsif int_coverage > 0.2 && int_coverage <= 0.3
      @company.loan_rate = (uk_gilt_10 + 0.0864)*100
    elsif int_coverage > 0.3 && int_coverage <= 0.4
      @company.loan_rate = (uk_gilt_10 + 0.0437)*100
    elsif int_coverage > 0.4 && int_coverage <= 0.5
      @company.loan_rate = (uk_gilt_10 + 0.0357)*100
    elsif int_coverage > 0.5 && int_coverage <= 0.6
      @company.loan_rate = (uk_gilt_10 + 0.0298)*100
    elsif int_coverage > 0.6 && int_coverage <= 0.7
      @company.loan_rate = (uk_gilt_10 + 0.0238)*100
    elsif int_coverage > 0.7 && int_coverage <= 0.9
      @company.loan_rate = (uk_gilt_10 + 0.0198)*100
    elsif int_coverage > 0.9 && int_coverage <= 1.19
      @company.loan_rate = (uk_gilt_10 + 0.0127)*100
    elsif int_coverage > 1.2 && int_coverage <= 1.5
      @company.loan_rate = (uk_gilt_10 + 0.0113)*100
    elsif int_coverage > 1.5 && int_coverage <= 2
      @company.loan_rate = (uk_gilt_10 + 0.0099)*100
    elsif int_coverage > 2 && int_coverage <= 2.5
      @company.loan_rate = (uk_gilt_10 + 0.009)*100
    elsif int_coverage > 2.5 && int_coverage <= 3
      @company.loan_rate = (uk_gilt_10 + 0.0072)*100
    elsif int_coverage > 3
      @company.loan_rate = (uk_gilt_10 + 0.0054)*100
    end
  end


  def get_info_from_api(company_number, company)
    require 'companies_house/client'
    client = CompaniesHouse::Client.new(api_key: ENV['COMPANIES_HOUSE_API_KEY'])
    profile = client.company(company_number)
    infos = {}
    infos[:company_name] = profile['company_name'] if company.company_name.blank?
    infos[:office_address] = "#{profile['registered_office_address']['address_line_1']}, #{profile['registered_office_address']['locality']}, #{profile['registered_office_address']['postal_code']}" if company.office_address.blank?

    return infos
  end

  def set_companyinfo
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:company_number, :company_name, :director_names,:years_credit_history,:business_category,:office_address, :last_year_ebit, :last_year_interest, :last_year_debt, :last_year_assets, :loan_type,:borrowing_length,:use_of_funds_description,:required_funds, :photo, :doc_accounts, :doc_bank_statements)
  end

end
