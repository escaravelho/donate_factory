require 'rails_helper'

describe 'Visitor should finds institution' do
  scenario 'successfully' do
    institution = create(:institution)

    visit root_path

    fill_in 'Pesquisa', with: 'São Paulo'

    click_on 'Pesquisar'

    expect(page).to have_content institution.city
  end

  scenario 'and visitor should start donation process' do
    institution = create(:institution)

    visit root_path

    fill_in 'Pesquisa', with: 'São Paulo'

    click_on 'Pesquisar'

    click_on 'Doar'

    expect(page).to have_content institution.name
  end
end
