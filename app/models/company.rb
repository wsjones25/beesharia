class Company < ApplicationRecord
  belongs_to :user
  has_many :investments
  mount_uploader :photo, PhotoUploader
  mount_uploader :doc_accounts, PhotoUploader
  mount_uploader :doc_bank_statements, PhotoUploader

  validates :company_name, :years_credit_history, :borrowing_length, :required_funds, presence: true
  validates :last_year_ebit, numericality: { only_integer: true, less_than: 100 }
  validates :last_year_interest, numericality: { only_integer: true, less_than: 100 }
  validates :last_year_debt, numericality: { only_integer: true, less_than: 100 }
  validates :last_year_assets, numericality: { only_integer: true, less_than: 100 }


  BUSINESS_CATEGORY = ["Manufacturing", "Construction", "Agriculture", "Financial and Business Services", "Education and Health Work", "Hotels and Restaurants", "Real Estate and Renting", "Tourism", "Transport, Storage, and Communication", "Wholesale and Retail Trade"]
  LOAN_TYPE = ["Working Capital", "Asset Finance/Refinance", "Expansion Capital"]
  RISK_SCORE = ["Low Risk", "Medium Risk", "High Risk"]

  def self.filter(args)
    business_category = args[:business_category] if args[:business_category].present?
    loan_type = args[:loan_type] if args[:loan_type].present?
    risk_score = args[:risk_score] if args[:risk_score].present?

    return where(business_category: business_category, loan_type: loan_type, risk_score: risk_score) if business_category && loan_type && risk_score
    return where(business_category: business_category, loan_type: loan_type) if business_category && loan_type
    return where(business_category: business_category, risk_score: risk_score) if business_category && risk_score
    return where(loan_type: loan_type, risk_score: risk_score) if loan_type && risk_score
    return where(business_category: business_category) if business_category
    return where(loan_type: loan_type) if loan_type
    return where(risk_score: risk_score) if risk_score
    return all
  end
end
