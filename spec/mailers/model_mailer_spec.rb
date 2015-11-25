require "rails_helper"

RSpec.describe ModelMailer, type: :mailer do

  describe "new_record_notification" do
    let(:donation) {create(:donation)}
    let(:mail) { ModelMailer.new_record_notification(donation) }

    it "renders the headers" do
      expect(mail.subject).to eq("Nova doação")
      expect(mail.to).to eq(["campus@campuscode.com"])
      expect(mail.from).to eq(["postmaster@sandbox17a9434e46274934b59f4ef9c5b5a8a0.mailgun.org"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Oi")
    end
  end

end
