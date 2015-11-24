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

    expect(page).to have_content 'Doação registrada com sucesso.'
    expect(page).to have_content 'Sandro'
    expect(page).to have_content 'Roupas'
    expect(page).to have_content 'campus@campuscode.com.br'
  end

  scenario 'and is notified about the collection' do
    institution = create(:institution, collect_donations: true)

    visit new_institution_donation_path(institution)

    fill_in 'Nome:', with: 'Sandro'
    select 'Roupas', from: 'Tipo de Doação:'
    fill_in 'Telefone:', with: '1198765432'
    fill_in 'E-Mail:', with: 'campus@campuscode.com.br'

    click_on 'Doar'

    expect(page).to have_content 'Doação registrada com sucesso.'
    expect(page).to have_content 'A instituição entrará em contato para agendar 
                                 a coleta da sua doação.'
  end

  scenario 'incomplete' do
    institution = create(:institution, collect_donations: true)

    visit new_institution_donation_path(institution)

    click_on 'Doar'

    expect(page).to have_content 'Não foi possível registrar sua doação.'
  end
end
