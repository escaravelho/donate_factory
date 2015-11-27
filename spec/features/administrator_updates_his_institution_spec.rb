require 'rails_helper'
feature 'Administrator edits own institution' do
  scenario 'successfuly' do
    admin = login_administrator
    institution = create(:institution, administrator: admin)

    visit edit_institution_path(institution.id)

    fill_in 'Nome:', with: 'Horas de Ação'
    fill_in 'Email:', with: 'horas@horasdeacao.org'
    fill_in 'Cidade:', with: 'Osasco'
    fill_in 'Estado:', with: 'São Paulo'
    fill_in 'Endereço:', with: 'Rua Antonio Agu 1200'
    fill_in 'Bairro:', with: 'Centro'
    fill_in 'CEP:', with: '05434670'
    fill_in 'Telefone:', with: 1_145_678_900
    fill_in 'Contato:', with: 'Maria'
    fill_in 'Trabalho:', with: 'Cuidando de crianças'
    fill_in 'Site:', with: 'www.horasdeacao.org'

    click_on 'Atualizar'

    expect(page).to have_content 'Horas de Ação'
    expect(page).to have_content 'horas@horasdeacao.org'
    expect(page).to have_content 'Osasco'
    expect(page).to have_content 'São Paulo'
    expect(page).to have_content 'Rua Antonio Agu 1200'
    expect(page).to have_content 'Centro'
    expect(page).to have_content '05434670'
    expect(page).to have_content 1_145_678_900
    expect(page).to have_content 'Maria'
    expect(page).to have_content 'Cuidando de crianças'
    expect(page).to have_content 'www.horasdeacao.org'
  end

  scenario 'does not edit other user institution' do
    admin = login_administrator

    institution = create(:institution, administrator: create(:administrator))

    visit edit_institution_path(institution.id)

    expect(page).not_to have_content institution.name
    expect(current_path).to eq root_path
  end
end
