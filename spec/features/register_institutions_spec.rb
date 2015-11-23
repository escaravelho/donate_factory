require 'rails_helper'
feature 'register institution' do
  scenario 'successfully' do
    visit new_institution_path

    fill_in 'Nome:', with: 'Médicos Sem Fronteiras'
    fill_in 'Email:', with: 'contato@msf.org'
    fill_in 'Endereço:', with: 'Alameda Santos'
    fill_in 'Bairro:', with: 'Centro'
    fill_in 'CEP:', with: '04254000'
    fill_in 'Cidade:', with: 'São Paulo'
    fill_in 'Estado:', with: 'SP'
    fill_in 'Telefone:', with: 1_143_658_796
    fill_in 'Contato:', with: 'Paulo'
    fill_in 'Trabalho:', with: 'Atendimentos humanitários'
    fill_in 'Site:', with: 'www.msf.org'
    uncheck 'Inativo'

    click_on 'Cadastrar'

    expect(page).to have_content 'Médicos Sem Fronteiras'
    expect(page).to have_content 'contato@msf.org'
    expect(page).to have_content 'Alameda Santos'
    expect(page).to have_content 'Centro'
    expect(page).to have_content '04254000'
    expect(page).to have_content 'São Paulo'
    expect(page).to have_content 'SP'
    expect(page).to have_content 1_143_658_796
    expect(page).to have_content 'Paulo'
    expect(page).to have_content 'Atendimentos humanitários'
    expect(page).to have_content 'www.msf.org'
  end

  scenario 'unsuccessfully' do
    visit new_institution_path

    click_on 'Cadastrar'

    expect(page).to have_content 'Por favor, verifique os campos obrigatórios'
  end
end
