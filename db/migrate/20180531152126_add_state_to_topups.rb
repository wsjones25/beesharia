class AddStateToTopups < ActiveRecord::Migration[5.2]
  def change
    add_column :topups, :state, :string
  end
end
