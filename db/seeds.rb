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

le_wagon = Team.create!(name: "Code League", club_name: "Le Wagon FC", user: user)
# fc_gobelins.photo = "https://res.cloudinary.com/dbuix43pi/image/upload/v1581448597/Logo_FC_Gobelins_wigdn0.png"
# fc_gobelins.save!

csv_t = File.read(Rails.root.join('lib', 'exercises_3.csv'))
csv = CSV.parse(csv_t, :headers => true, col_sep: ';')

csv.each do |row|

  # cat_array = row[3]
  # p cat_array
  # cat_array2 = cat_array.split(',')
  # p cat_array2.class

  Exercise.create!(name: row[0], description: row[1], default_duration_in_minutes: row[2], category: row[3], picture: row[4], video: row[5])
end
puts "Tu as créé des exercices"

csv_players = File.read(Rails.root.join('lib', 'players.csv'))
csv_p = CSV.parse(csv_players, :headers => true, col_sep: ';')
csv_p.each do |row|
  Player.create!(first_name: row[0], last_name: row[1], post: row[2], number: row[3], team: le_wagon)
end
puts "Tu as créé des joueurs"


# encoding:'iso-8859-1:utf-8',
