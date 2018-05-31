class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :balance, :integer
    add_column :users, :investment_total, :integer
    add_column :users, :avg_expected_return, :float
  end
end
