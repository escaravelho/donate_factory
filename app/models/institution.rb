class Institution < ActiveRecord::Base
  validates :name, :email, :address, :neighborhood, :postal_code, :city, :state,
            :phone, :work, presence: true

  def self.search_by_city(city)
    Institution.where('city LIKE ?', city)
  end
end
