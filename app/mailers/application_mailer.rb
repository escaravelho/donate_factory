class ApplicationMailer < ActionMailer::Base
  default from: 'postmaster@postmaster.com'
  layout 'mailer'
end
