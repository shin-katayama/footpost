require "csv"

posts_csv = CSV.readlines("db/posts.csv")
posts_csv.shift
posts_csv.each do |row|
  Post.create(name: row[1], text: row[2], image: row[3], user_id: row[4])
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
