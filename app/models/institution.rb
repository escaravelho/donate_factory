class Institution < ActiveRecord::Base
  has_many :donations
  has_many :photos
  has_many :galleries
  validates :name, :email, :address, :neighborhood, :postal_code, :city, :state,
            :phone, :work, presence: true

  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' },
                             default_url: '/images/:style/missing.png'
  validates_attachment_content_type :avatar, content_type: %r{\Aimage\/.*\Z}

  def self.search_by_city(city)
    Institution.where('city LIKE ? AND inactive = ?', "%#{city}%", false)
  end
end
