class AddAttachmentAvatarToInstitutions < ActiveRecord::Migration
  def self.up
    change_table :institutions do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :institutions, :avatar
  end
end
