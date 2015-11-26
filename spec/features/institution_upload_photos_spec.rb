require 'rails_helper'
feature 'Institution upload photos' do
  scenario 'successfully' do
    institution = create(:institution)

    visit institution_path(institution)
    
    attach_file('Selecione uma foto:', 'spec/images/ong.jpg')
    click_on 'Upload'

    #expect(page).to have_content 'Primeira'
    expect(page).to have_xpath("//img[contains(@src, 'ong.jpg')]")
  end
end
