# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: "ロバート", given_name: "秋山", image_url: "http://cdn.top.tsite.jp/static/top/sys/contents_image/025/975/522/25975522_34146.jpg", email: "robart@akiyama.com", password: "password")
User.create(first_name: "ドン", given_name: "小西", image_url: "http://next.rikunabi.com/proron/1132/img/content_photo_main01.jpg", email: "don@konishi.com", password: "password")
User.create(first_name: "ルー", given_name: "大柴", image_url: "http://stat.ameba.jp/user_images/20151113/13/lou-oshiba/b0/64/j/t02200251_0540061613482462207.jpg", email: "rou@oshiba.com", password: "password")

100.times do |index|
  Land.create(address: "八幡平市#{index}丁目", area: rand(100) + 100, price: rand(100) + 1000, description: "#{index}番目におすすめの物件です", image_url: "http://blog-imgs-52.fc2.com/m/a/n/manihachi/IMG_2869.jpg", user_id: rand(3) + 1)
end

300.times do |index|
  Comment.create(body: "#{index}回目のコメントです。この物件いいね。", land_id: rand(100) + 1, user_id: rand(3) + 1 )
end