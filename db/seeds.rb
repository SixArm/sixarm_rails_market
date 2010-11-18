# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

user = User.find_or_create_by_id(
                   :id => 1,
                   :username => 'admin',
                   :password => 'secret'
                   )

shop = Shop.find_or_create_by_id(
                   :id => 1,
                   :name_in_en => "Demo Shop",
                   :description_in_en => "This is a demonstration shop"
                   )

shopkeeper = Shopkeeper.find_or_create_by_id(
                  :id => 1,
                  :shop => shop,
                  :user => user
                  )

item = Item.find_or_create_by_id(
                   :id => 1,
                   :name_in_en => "Demo Item",
                   :description_in_en => "This is a demonstration item",
                   :length => 1.01,
                   :width => 1.02,
                   :height => 1.03,
                   :mass => 1.04,
                   :price_in_usd => 1.05,
                   :shop => shop
                   )
