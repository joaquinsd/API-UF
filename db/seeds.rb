# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
Unit.delete_all
CSV.foreach('db/UF2019.csv', headers: true, col_sep: '	') do |row|
  jan = row.fetch('Ene')
  feb = row.fetch('Feb')
  day = row.fetch(row.headers[0])

  jan_decimals = jan.gsub('.', '').gsub(',', '.')
  feb_decimals = feb.gsub('.', '').gsub(',', '.') unless feb.nil?

  Unit.create(date: '2019-01-' + day, value: jan_decimals)
  Unit.create(date: '2019-02-' + day, value: feb_decimals) unless feb.nil?
end
