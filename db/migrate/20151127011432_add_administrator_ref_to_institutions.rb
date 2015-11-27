class AddAdministratorRefToInstitutions < ActiveRecord::Migration
  def change
    add_reference :institutions, :administrator, index: true, foreign_key: true
  end
end
