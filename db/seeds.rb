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

csv_t = File.read(Rails.root.join('lib', 'exercises.csv'))
csv = CSV.parse(csv_t, :headers => true)
csv.each do |row|
  Exercise.create!(name: row[0], description: row[1], default_duration_in_minutes: row[2])
end
puts "fin"
