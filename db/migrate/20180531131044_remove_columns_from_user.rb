class RemoveColumnsFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :balance, :integer
    remove_column :users, :investment_total, :integer
    remove_column :users, :avg_expected_return, :float
  end
end
