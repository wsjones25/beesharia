class ChangeColumnInUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.rename :company, :borrower
    end
  end
end
