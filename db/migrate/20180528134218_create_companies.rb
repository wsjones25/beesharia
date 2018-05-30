class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_number
      t.string :company_name
      t.string :director_names
      t.integer :risk_score
      t.integer :years_credit_history
      t.string :business_category
      t.string :office_address
      t.integer :last_year_ebit
      t.integer :last_year_interest
      t.integer :last_year_debt
      t.integer :last_year_assets
      t.string :loan_type
      t.integer :borrowing_length
      t.string :use_of_funds_description
      t.string :doc_accounts
      t.string :doc_bank_statements
      t.integer :required_funds
      t.integer :days_remaining
      t.float :loan_rate

      t.timestamps
    end
  end
end
