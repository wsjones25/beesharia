class CreateTopups < ActiveRecord::Migration[5.2]
  def change
    create_table :topups do |t|
      t.references :user, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
