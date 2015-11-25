class SendMail < ApplicationMailer
  default from: 'postmaster@postmaster.com'
  def new_donation_notification(donation)
    @donation = donation
    mail to: @donation.institution.email, subject: 'Nova doação'
  end
end
