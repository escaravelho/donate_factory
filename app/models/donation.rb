class Donation < ActiveRecord::Base
  belongs_to :institution
  LABELS = %w(Roupas Brinquedos Móveis Alimentos)
end
