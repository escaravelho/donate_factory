class AddEmailToInstitutions < ActiveRecord::Migration
  def change
    add_column :institutions, :email, :string
    add_column :institutions, :address, :string
    add_column :institutions, :postal_code, :string
    add_column :institutions, :neighborhood, :string
    add_column :institutions, :phone, :integer
    add_column :institutions, :contact, :string
    add_column :institutions, :work, :text
    add_column :institutions, :site, :string
  end
end
