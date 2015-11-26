def login_administrator
  administrator = FactoryGirl.create(:administrator)
  login_as(administrator, scope: :administrator)
  administrator
end
