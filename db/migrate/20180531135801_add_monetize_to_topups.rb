class AddMonetizeToTopups < ActiveRecord::Migration[5.2]
  def change
    add_monetize :topups, :amount, currency: { present: false }
  end
end
