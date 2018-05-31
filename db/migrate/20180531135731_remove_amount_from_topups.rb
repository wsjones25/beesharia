class RemoveAmountFromTopups < ActiveRecord::Migration[5.2]
  def change
    remove_column :topups, :amount, :integer
  end
end
