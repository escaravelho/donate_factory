class ModelMailer < ApplicationMailer

  default from: "postmaster@sandbox17a9434e46274934b59f4ef9c5b5a8a0.mailgun.org"

  def new_record_notification(donation)
    @donation = donation
    mail to: @donation.institution.email, subject: "Nova doação"
  end
end
