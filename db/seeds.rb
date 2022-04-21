# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require 'faker'


100.times do
  Teacher.create(name: Faker::Name.unique.name, school: Faker::Company.unique.name, school_year: Faker::Date.between(from: 2.years.ago, to: Date.today).year)
end