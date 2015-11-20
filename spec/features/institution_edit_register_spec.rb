require 'rails_helper'
feature 'Institution edit register' do
  scenario 'successfuly' do
    institution = create(:institution)

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

    click_on 'Cadastrar'

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

  scenario 'unsuccessfuly' do
    institution = create(:institution)

    visit edit_institution_path(institution.id)

    fill_in 'Nome:', with: ''

    click_on 'Cadastrar'

    expect(page).to have_content 'Por favor, verifique os campos obrigatórios'
  end
end
