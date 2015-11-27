require 'rails_helper'

feature 'Institution collect donation' do
  scenario 'successfully' do
    institution = create(:institution)

    login_administrator

    visit new_institution_path

    fill_in 'Nome:', with: institution.name
    fill_in 'Email:', with: institution.email
    fill_in 'Endereço', with: institution.address
    fill_in 'Bairro:', with: institution.neighborhood
    fill_in 'CEP:', with: institution.postal_code
    fill_in 'Cidade:', with: institution.city
    fill_in 'Estado:', with: institution.state
    fill_in 'Telefone:', with: institution.phone
    fill_in 'Contato:', with: institution.contact
    fill_in 'Trabalho:', with: institution.work
    fill_in 'Site:', with: institution.site
    check 'Recolhe Doações'

    click_on 'Cadastrar'

    expect(page).to have_content institution.name
    within('#collect-donations') do
      expect(page).to have_content 'Sim'
    end
  end
end
