class AddCollectDonationsToInstitution < ActiveRecord::Migration
  def change
    add_column :institutions, :collect_donations, :boolean
  end
end
