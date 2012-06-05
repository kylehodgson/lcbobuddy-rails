# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


data = JSON.parse(File.read(File.join(Rails.root, "db", "seeds.json")))

data.each do |str|
  product = str.last
  Product.create!(
    :lcbo_id => product['id'],
    :image_url => product['image_url'],
    :image_thumb_url => product['image_thumb_url'],
    :name => product['name'],
    :category => product['category'],
    :region => product['region'],
    :price => product['price'],
    :rating => product['rating'],
    :description => product['description'],
    :price => product['price'],
    :rating => product['rating'].to_i,
    :description => product['description'],
    :byline => product['byline'],
    :byline_link => product['byline_link']
  )
end



