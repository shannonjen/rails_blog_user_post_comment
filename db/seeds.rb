# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{username: "jen", password: "1234"}, {username: "bradley", password: "1234"}, {username: "bowie", password: "1234"}, {username: "patti", password: "1234"}])

users = User.order(:created_at).take(4)
10.times do
  body = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis distinctio sapiente provident obcaecati deserunt repellendus placeat aut sint, expedita vitae eum quos reprehenderit cum, perspiciatis accusantium voluptatibus, nam. Dolores, optio!"
  users.each { |user| user.posts.create!(body: body) }
end

