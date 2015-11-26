class Gallery < ActiveRecord::Base
  belongs_to :institution
  validates :name, presence true, length: { maximum: 50 }
  validates :institution, presence: true
end
