class RemoveRiskScoreFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :risk_score, :integer
  end
end
