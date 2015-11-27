FactoryGirl.define do
  factory :administrator do
    sequence :email do |n|
      "contato#{n}@adolescentesdobem.com.br"
    end
    password '12345678'
  end
end
