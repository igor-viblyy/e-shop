# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if User.blank?
  User.create!([
                { email: 'admins@mail.com', password: 'password', admin: true },
                { email: 'user@mail.com', password: 'password', admin: false }
              ])
end