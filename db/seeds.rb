# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cat_kochi = Category.create(title: 'Kochikame', description: 'Fun cartoon ever!!')
cat_walking = Category.create(title: 'The Walking Dead', description: 'Zombies everywhere...')

(1..10).each do |index|
  video = Video.create(title: 'Kochikame #{index}', category: cat_kochi)
  Glance.create(position: index, image_address: 'test #{index}')
end

(1..9).each do |index|
  video = Video.create(title: 'The Walking Dead #{index}', category: cat_walking)
  Glance.create(position: index, image_address: 'test #{index}')
end

