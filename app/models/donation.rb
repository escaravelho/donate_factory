class Donation < ActiveRecord::Base
  belongs_to :institution
  LABELS = %w(Roupas Brinquedos Móveis Alimentos)
  validates :name, :mail, :type_of_donation, :institution, presence: true

  after_save :send_mail

  def send_mail
    SendMail.new_donation_notification(self).deliver_now
  end
end
