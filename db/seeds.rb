# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cat_walking = Category.create(title: 'The Walking Dead', description: 'Zombies everywhere...')

(1..9).each do |index|
  video = Video.create(title: 'The Walking Dead Episode #{index}', category: cat_walking)
  (1..20).each do |g_index|
    image_path = '/the_walking_dead/#{g_index}.jpg'
    Glance.create(position: g_index, image_address: image_path)
  end
end

