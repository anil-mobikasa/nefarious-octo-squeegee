# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
r1 = Role.create({name: "super_admin", description: "Can manage all application."})
r2 = Role.create({name: "admin", description: "Can read and create patients, dietitian."})
r3 = Role.create({name: "dietitian", description: "Can perform create blogs, recipies."})
r4 = Role.create({name: "patient", description: "Can fix appointment with dietitian."})

u1 = User.create({username: "super_admin", email: "super_admin@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({username: "admin", email: "admin@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u3 = User.create({username: "dietitian", email: "dietitian@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})
u4 = User.create({username: "patient", email: "patient@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r4.id})
