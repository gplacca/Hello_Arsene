# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
# require 'lib/exercises.csv'

# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
# filepath    = '/exercises.csv '
Player.destroy_all
TrainingExercise.destroy_all
Training.destroy_all
Team.destroy_all
User.destroy_all
Exercise.destroy_all

user = User.create!(email: "contact@helloarsene.com", password: "helloarsene")

fc_gobelins = Team.create!(name: "Nationale 2", club_name: "FC Gobelins Paris XIII", user: user)
# fc_gobelins.photo = "https://res.cloudinary.com/dbuix43pi/image/upload/v1581448597/Logo_FC_Gobelins_wigdn0.png"
# fc_gobelins.save!

csv_t = File.read(Rails.root.join('lib', 'exercises.csv'))
csv = CSV.parse(csv_t, :headers => true)
csv.each do |row|
  Exercise.create!(name: row[0], description: row[1], default_duration_in_minutes: row[2])
end
puts "Tu as créé des exercices"

csv_players = File.read(Rails.root.join('lib', 'players.csv'))
p csv_p = CSV.parse(csv_players, :headers => true)
csv_p.each do |row|
  p row
  Player.create!(first_name: row[0], last_name: row[1], birth_date: row[2], post: row[3], team: fc_gobelins)
end
puts "Tu as créé des joueurs"

