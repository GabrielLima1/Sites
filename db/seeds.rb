# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CRIANDO UM ACESSO
Accessp.create accessp_name: "Admin"

# CRIANDO UMA ENDEREÇO DE FABRICA
EndFactor.create(efactory_country: "Brasil", efactory_state: "São Paulo", efactory_city: "Barueri", efactory_burgh: "Eng. Novo",
                 efactory_street: "Av. Constran", end_factory_num: "132", efactory_zipcode: "06416-090", efactory_longitude: "1111111-11111",
                 efactory_latitude: "1111111-11111")

# CRIANDO O TIPO DE ARQUIVO
TypeArchive.create(tarchive_name: "Foto")

# CRIANDO O ARQUIVO
Archive.create(archive_name: "Foto Empresa teste", archive_date: "16/04/2018", type_archive_id: 1)

# CRIANDO O CONTATO DA FABRICA
FacContact.create(fcontact_name: "Mizu Matriz", fcontact_mail: "matriz@mizu.com.br", fcontact_tel: "(11) 4002-8922",
                     fcontact_cel: "(11) 9 4002-8922", fcontact_hours: "07:30 ~ 17:30", fcontact_status: true, archive_id: 1,
                     end_factor_id: 1)


# CRIANDO A FABRICA / COMPANY
Compan.create(company_name: "Mizu Matriz", company_description: "Empresa cadastrada Manualmente", archive_id: 1,
              fac_contact_id: 1)

# CRIANDO DOIS USUARIOS DEFAULT
User.create(email: "thiago.griao@mizu.com.br",      password: 123456 ,user_fname: "Thiago",
            user_lname: "Suporte", user_departament: "TI", accessp_id: 1, compan_id: 1)
User.create(email: "gabriel.pereira@mizu.com.br",   password: 123456 ,user_fname: "Gabriel",
            user_lname: "Suporte", user_departament: "TI", accessp_id: 1, compan_id: 1)
