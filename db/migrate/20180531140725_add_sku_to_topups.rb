class AddSkuToTopups < ActiveRecord::Migration[5.2]
  def change
    add_column :topups, :topup_sku, :string
  end
end
