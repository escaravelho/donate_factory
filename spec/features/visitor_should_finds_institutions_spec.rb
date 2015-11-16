require 'rails_helper'

describe 'Visitor should finds institution' do
  scenario 'successfully' do
    institution = create(:institution)

    visit root_path

    fill_in 'Pesquisa', with: 'São Paulo'
    click_on 'Pesquisar'

    expect(page).to have_content institution.city
  end
end
