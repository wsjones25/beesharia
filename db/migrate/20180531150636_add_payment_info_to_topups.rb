class AddPaymentInfoToTopups < ActiveRecord::Migration[5.2]
  def change
    add_column :topups, :payment_info, :jsonb
  end
end
