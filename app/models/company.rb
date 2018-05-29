class Company < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :company_name, :last_year_ebit, :last_year_interest, :last_year_debt, :last_year_assets, presence: true
end
