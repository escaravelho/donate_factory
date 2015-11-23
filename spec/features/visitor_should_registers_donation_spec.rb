require 'rails_helper'

describe 'Visitor should register donation' do
  scenario 'successfully' do
    institution = create(:institution)

    visit new_institution_donation_path(institution)

    fill_in 'Nome:', with: 'Sandro'
    select 'Roupas', from: 'Tipo de Doação:'
    fill_in 'Telefone:', with: '1198765432'
    fill_in 'E-Mail:', with: 'campus@campuscode.com.br'

    click_on 'Doar'

    expect(page).to have_content 'Doação realizada!'
    expect(page).to have_content 'Sandro'
    expect(page).to have_content 'Roupas'
    expect(page).to have_content 'campus@campuscode.com.br'
  end
end
