# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Institution.delete_all
Donation.delete_all

institution = Institution.create!({id:1, name: 'Horas de Ação', state:'SP',
                                  city: 'Osasco',
                                  email: 'douglasasilva@gmail.com',
                                  address: 'Rua Pernambucana, 250',
                                  postal_code: '06140040',
                                  neighborhood: 'Jd. Conceição', phone: 1234,
                                  contact: 'Janaina', work: 'Trabalho de apoio
                                  aos jovens', site: 'www.horas.org',
                                  inactive: false, collect_donations: true})

Donation.create!({name: 'Amanda', type_of_donation: 'Brinquedos', phone: 2345,
                  mail: 'amanda.nanes@gmail.com', institution: institution})


Administrator.create(email: 'contato@adolescentesdobem.com.br',
                     password: '12345678')
