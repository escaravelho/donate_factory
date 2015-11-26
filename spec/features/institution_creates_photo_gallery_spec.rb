require 'rails_helper'
feature 'Institution creates gallery' do
  scenario 'successfully' do
    institution = create(:institution)

    visit new_gallery_path
    click_on 'Nova Foto'
    attach_file('Selecione uma foto:', 'spec/images/ong.jpg')
    click_on 'Salvar'

    expect(page).to have_xpath("//img[contains(@src, 'ong.jpg')]")
  end
end
