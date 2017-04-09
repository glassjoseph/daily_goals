
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



joseph = User.create(username: "Joseph", email: "@joseph", password: "password")
sarah = User.create(username: "Sarah", email: "@sarah", password: "password")
ted = User.create(username: "Ted", email: "@ted", password: "password")
james = User.create(username: "James", email: "@james", password: "password")
gen = User.create(username: "Gen", email: "@gen", password: "password")

people = [joseph, sarah, ted, james, gen]

d1 = Daily.create(goal: "Exercise")
d2 = Daily.create(goal: "Sleep")
d3 = Daily.create(goal: "Study")
d4 = Daily.create(goal: "Read")
d5 = Daily.create(goal: "Help")

dailies = [d1, d2, d3, d4, d5]

s1 = Score.new(date: "2017-04-1", score: 1 )
s2 = Score.new(date: "2017-04-2", score: 2 )
s3 = Score.new(date: "2017-04-3", score: 3 )
s4 = Score.new(date: "2017-04-4", score: 4 )
s5 = Score.new(date: "2017-04-5", score: 5 )
s6 = Score.new(date: "2017-04-6", score: 6 )
s7 = Score.new(date: "2017-04-7", score: 7 )

scores = [s1, s2, s3, s4, s5, s6, s7]

# dailies.each { |d| d.scores << scores}
# User.all.each { |u| u.dailies << dailies }


people.each do |person|
  person.dailies.create(goal: "Exercise")
  person.dailies.create(goal: "Sleep")
  person.dailies.create(goal: "Study")
  person.dailies.create(goal: "Read")
  person.dailies.create(goal: "Help")
  person.dailies.each do |daily|
    daily.scores.create(date: "2017-04-1", score: 1 )
    daily.scores.create(date: "2017-04-2", score: 2 )
    daily.scores.create(date: "2017-04-3", score: 3 )
    daily.scores.create(date: "2017-04-4", score: 4 )
    daily.scores.create(date: "2017-04-5", score: 5 )
    daily.scores.create(date: "2017-04-6", score: 6 )
    daily.scores.create(date: "2017-04-7", score: 7 )
  end
end
