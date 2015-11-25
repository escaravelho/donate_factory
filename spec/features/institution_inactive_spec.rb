require 'rails_helper'
feature 'Institution inactive register' do
  scenario 'successfully' do
    institution = create(:institution)

    visit edit_institution_path(institution)

    fill_in 'Nome:', with: 'Instituição'
    fill_in 'Email:', with: 'campus@campuscode.com'
    fill_in 'Endereço:', with: 'Alameda Santos 1293'
    fill_in 'Bairro:', with: 'Centro'
    fill_in 'CEP:', with: '05434670'
    fill_in 'Cidade:', with: 'São Paulo'
    fill_in 'Estado:', with: 'São Paulo'
    fill_in 'Telefone:', with: 1_145_678_900
    fill_in 'Contato:', with: 'Jhon'
    fill_in 'Trabalho:', with: 'Ensinando crianças a codar!!!'
    fill_in 'Site:', with: 'www.campuscode.com.br'
    attach_file('Selecione uma foto:', 'spec/images/avatar.jpg')
    check 'Inativo'

    click_on 'Cadastrar'

    expect(page).to have_content institution.name
    #within('#collect-donations') do
      expect(page).to have_content 'Inativo'
    #end
  end
end
