class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :institution, index: true, foreign_key: true
      t.text :description
      t.timestamps null: false
    end
  end
end
