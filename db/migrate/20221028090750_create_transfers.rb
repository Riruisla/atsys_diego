class CreateTransfers < ActiveRecord::Migration[7.0]
  def change
    create_table :transfers do |t|
      t.integer :origin_account_id
      t.integer :destination_account_id
      t.float :amount
      t.string :status
      t.timestamps
    end
  end
end
