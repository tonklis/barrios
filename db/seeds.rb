# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

role_admin = Role.create(name: 'admin')
User.create(first_name: 'admin', last_name: 'admin', email: 'admin@admin.com', password: 'adminadmin', roles: [role_admin])

#Barrios con imágenes
Neighborhood.create(name: 'Bosque de Tlalpan', picture_url_normal: 'hoods/normal/1-bosque.png', picture_url_big: 'hoods/big/1-bosque.png')
Neighborhood.create(name: 'Satélite', picture_url_normal: 'hoods/normal/2-statelite.png', picture_url_big: 'hoods/big/2-satelite.png')
Neighborhood.create(name: 'Portales', picture_url_normal: 'hoods/normal/3-portales.png', picture_url_big: 'hoods/big/3-portales.png')
Neighborhood.create(name: 'Juárez', picture_url_normal: 'hoods/normal/4-juarez.png', picture_url_big: 'hoods/big/4-juarez.png')
Neighborhood.create(name: 'Iztapalapa', picture_url_normal: 'hoods/normal/5-iztapalapa.png', picture_url_big: 'hoods/big/5-iztapalapa.png')
Neighborhood.create(name: 'Del Valle', picture_url_normal: 'hoods/normal/6-delvalle.png', picture_url_big: 'hoods/big/6-delvalle.png')
Neighborhood.create(name: 'Coyoacán', picture_url_normal: 'hoods/normal/7-coyoacan.png', picture_url_big: 'hoods/big/7-coyoacan.png')
Neighborhood.create(name: 'Tlatelolco', picture_url_normal: 'hoods/normal/8-tlatelolco.png', picture_url_big: 'hoods/big/8-tlatelolco.png')
Neighborhood.create(name: 'Condesa', picture_url_normal: 'hoods/normal/9-condesa.png', picture_url_big: 'hoods/big/9-condesa.png')
Neighborhood.create(name: 'Coapa', picture_url_normal: 'hoods/normal/10-coapa.png', picture_url_big: 'hoods/big/10-coapa.png')
Neighborhood.create(name: 'Churubusco', picture_url_normal: 'hoods/normal/11-.churubusco.png', picture_url_big: 'hoods/big/11-churubusco.png')
Neighborhood.create(name: 'Chapultepec', picture_url_normal: 'hoods/normal/12-chapultepec.png', picture_url_big: 'hoods/big/12-chapultepec.png')

#Barrios sin imágenes
Neighborhood.create(name: 'Tepito')
Neighborhood.create(name: 'Roma')
Neighborhood.create(name: 'Juárez')
Neighborhood.create(name: 'Lagunilla')
Neighborhood.create(name: 'Zona Rosa')
Neighborhood.create(name: 'Doctores')
Neighborhood.create(name: 'San Rafael')
Neighborhood.create(name: 'Santa María de la Ribera')
Neighborhood.create(name: 'San Miguel Chapultepec')
Neighborhood.create(name: 'Xochimilco')
Neighborhood.create(name: 'Polanco')
Neighborhood.create(name: 'Nápoles')
Neighborhood.create(name: 'Narvarte')
Neighborhood.create(name: 'Lindavista')
Neighborhood.create(name: 'Vallejo')
Neighborhood.create(name: 'Central de Abastos')
Neighborhood.create(name: 'La Merced')
Neighborhood.create(name: 'Escandón')
Neighborhood.create(name: 'Peralvillo')
Neighborhood.create(name: 'Agrícola Oriental')
Neighborhood.create(name: 'San Angel')
Neighborhood.create(name: 'Santa Fe')
Neighborhood.create(name: 'La Raza')
Neighborhood.create(name: 'San Pedro de los Pinos')
Neighborhood.create(name: 'Río Blanco')
Neighborhood.create(name: 'Ermita Iztapalapa')
Neighborhood.create(name: 'Tacubaya')
Neighborhood.create(name: 'Virreyes')
Neighborhood.create(name: 'Tlalpan')
Neighborhood.create(name: 'Balbuena')
Neighborhood.create(name: 'Interlomas')
Neighborhood.create(name: 'Barranca Seca')
Neighborhood.create(name: 'San Pedro Mixquic')
