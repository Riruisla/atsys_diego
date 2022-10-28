class CreateAccouts < ActiveRecord::Migration[7.0]
  def change
    create_table :accouts do |t|
      t.integer :bank_id
      t.integer :user_id
      t.float :balance
      t.string :currency
      t.string :iban
      t.string :swift
      t.timestamps
    end
  end
end
