class Donation < ActiveRecord::Base
  belongs_to :institution
  LABELS = %w(Roupas Brinquedos Móveis Alimentos)
  validates :name, :mail, :type_of_donation, :institution, presence: true
end
