class CreateTransferHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :transfer_histories do |t|
      t.string  :origin_bank_name
      t.string  :origin_user_dni
      t.string  :origin_iban
      t.string  :destination_bank_name
      t.string  :destination_user_dni
      t.string  :destination_iban
      t.string  :amount
      t.string  :status
      t.timestamps
    end
  end
end
