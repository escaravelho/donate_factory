require 'rails_helper'

RSpec.describe SendMail, type: :mailer do
  describe 'new_donation_notification' do
    let(:donation) { create(:donation) }
    let(:mail) { SendMail.new_donation_notification(donation) }

    it 'renders the headers' do
      expect(mail.subject).to eq('Nova doação')
      expect(mail.to).to eq(['campus@campuscode.com'])
      expect(mail.from).to eq(['postmaster@postmaster.com'])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match('Doador')
    end
  end
end
