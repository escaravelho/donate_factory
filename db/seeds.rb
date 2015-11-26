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
