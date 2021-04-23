# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Message.destroy_all
User.destroy_all
Channel.destroy_all
puts "🗑  Deleted old Seeds"

general = Channel.create(name: 'general')
paris = Channel.create(name: 'paris')
react = Channel.create(name: 'react')
puts "=> Created Channels #{general.name}, #{paris.name}, #{react.name}"

dan = User.create(email: 'dan@dan.com', password: '123456' )
euge = User.create(email: 'euge@euge.com', password: '123456' )
jordan = User.create(email: 'jordan@jordan.com', password: '123456' )
puts "=> Created Users #{dan.email}, #{euge.email}, #{jordan.email}"

Message.create(channel: general, user: dan, content: "Hi, I'm Daniel!")
Message.create(channel: general, user: euge, content: "Hi Daniel! Nice to meet you.")
Message.create(channel: paris, user: jordan, content: "Anyone here?")
puts "=> Created Messages"

