class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :name
      t.string :type_of_donation
      t.string :phone
      t.string :mail
      t.references :institution, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
