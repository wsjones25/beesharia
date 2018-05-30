class Company < ApplicationRecord
  belongs_to :user
  has_many :investments
  mount_uploader :photo, PhotoUploader
  mount_uploader :doc_accounts, PhotoUploader
  mount_uploader :doc_bank_statements, PhotoUploader

  validates :company_name, :last_year_ebit, :last_year_interest, :last_year_debt, :last_year_assets, :years_credit_history, :borrowing_length, :required_funds, presence: true
end
