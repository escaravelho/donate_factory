class AddInactiveToInstitution < ActiveRecord::Migration
  def change
    add_column :institutions, :inactive, :boolean
  end
end
