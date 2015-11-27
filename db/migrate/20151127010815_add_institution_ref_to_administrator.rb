class AddInstitutionRefToAdministrator < ActiveRecord::Migration
  def change
    add_reference :administrators, :institution, index: true, foreign_key: true
  end
end
