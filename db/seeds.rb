# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |i|
  Task.find_or_create_by(
    titre: "Task#{i+1}",
    content: "Content#{i*10}",
    deadline_on: Date.today.since(30),
  priority: [0, 1, 2].sample,
  status: [0, 1, 2].sample
  )
end