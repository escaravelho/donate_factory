require 'rails_helper'
feature 'Institution recive email after donation' do
  scenario 'successfully' do
    institution = create(:institution)
    visit new_institution_donation_path(institution)

    fill_in 'Nome:', with: 'Sandro'
    select 'Roupas', from: 'Tipo de Doação:'
    fill_in 'Telefone:', with: '1198765432'
    fill_in 'E-Mail:', with: 'campus@campuscode.com.br'

    click_on 'Doar'

    expect(page).to have_content 'Doação registrada com sucesso.'
    expect(page).to have_content "A instituição #{institution.name}
                                  receberá a notificação da sua doação."
  end
end
