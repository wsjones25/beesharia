class AddRiskScoreToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :risk_score, :string
  end
end
