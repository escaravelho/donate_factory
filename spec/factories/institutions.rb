FactoryGirl.define do
  factory :institution do
    name 'Instituição'
    email 'campus@campuscode.com'
    state 'São Paulo'
    city 'São Paulo'
    address 'Alameda Santos 1293'
    neighborhood 'Centro'
    postal_code '05434670'
    phone 1_145_678_900
    contact 'Jhon'
    work 'Ensinando crianças a codar!!!'
    site 'www.campuscode.com.br'
    inactive false
  end
end
