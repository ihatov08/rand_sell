# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do |index|
  Land.create(address: "八幡平市#{index}丁目", area: rand(100) + 100, price: rand(100) + 1000, description: "#{index}番目におすすめの物件です", image_url: "http://blog-imgs-52.fc2.com/m/a/n/manihachi/IMG_2869.jpg" )
end

300.times do |index|
  Comment.create(body: "#{index}回目のコメントです。この物件いいね。", land_id: rand(100) + 1)
end