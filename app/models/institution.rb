class Institution < ActiveRecord::Base
  def self.search_by_city(city)
    Institution.where('city LIKE ?', city)
  end
end
