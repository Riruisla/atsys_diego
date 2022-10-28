class CreateBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :banks do |t|
      t.string :name
      t.string :country
      t.string :alias
      t.timestamps
    end
  end
end
