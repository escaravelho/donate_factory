class SendMailPreview < ActionMailer::Preview
  def new_donation_notification
    donation = Donation.last
    SendMail.new_donation_notification(donation)
  end
end
