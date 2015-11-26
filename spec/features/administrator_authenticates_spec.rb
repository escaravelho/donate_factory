require 'rails_helper'

describe 'Administrator authenticates' do
  scenario 'successfully' do
    administrator = create(:administrator)

    visit root_path

    click_on 'Entrar'

    fill_in 'Email', with: administrator.email
    fill_in 'Password', with: administrator.password

    click_on 'Log in'

    expect(page).to have_content 'Signed in successfully.'
    expect(page).to have_content administrator.email
    expect(page).not_to have_content 'Entrar'
  end
  scenario 'and logout' do
    administrator = create(:administrator)

    visit root_path

    click_on 'Entrar'

    fill_in 'Email', with: administrator.email
    fill_in 'Password', with: administrator.password

    click_on 'Log in'

    click_on 'Sair'

    expect(page).to have_content 'Signed out successfully'
  end
  scenario 'unsuccessfully' do
    visit root_path

    click_on 'Entrar'

    click_on 'Log in'

    expect(page).to have_content 'Invalid email or password.'
  end
end
