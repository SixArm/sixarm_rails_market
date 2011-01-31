# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 10000000000005) do

  create_table "images", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_in_de", :default => ""
    t.string   "name_in_en", :default => ""
    t.string   "name_in_es", :default => ""
    t.string   "name_in_fr", :default => ""
    t.string   "name_in_hi", :default => ""
    t.string   "name_in_it", :default => ""
    t.string   "name_in_ja", :default => ""
    t.string   "name_in_zh", :default => ""
    t.integer  "width"
    t.integer  "height"
    t.string   "src",        :default => ""
    t.string   "longdesc",   :default => ""
    t.string   "path",       :default => ""
  end

  create_table "items", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_in_de",                                      :default => ""
    t.string   "name_in_en",                                      :default => ""
    t.string   "name_in_es",                                      :default => ""
    t.string   "name_in_fr",                                      :default => ""
    t.string   "name_in_hi",                                      :default => ""
    t.string   "name_in_it",                                      :default => ""
    t.string   "name_in_ja",                                      :default => ""
    t.string   "name_in_zh",                                      :default => ""
    t.text     "description_in_de",                               :default => ""
    t.text     "description_in_en",                               :default => ""
    t.text     "description_in_es",                               :default => ""
    t.text     "description_in_fr",                               :default => ""
    t.text     "description_in_hi",                               :default => ""
    t.text     "description_in_it",                               :default => ""
    t.text     "description_in_ja",                               :default => ""
    t.text     "description_in_zh",                               :default => ""
    t.decimal  "length",            :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "width",             :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "height",            :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "mass",              :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "price_in_chf",      :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "price_in_cny",      :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "price_in_eur",      :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "price_in_gbp",      :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "price_in_inr",      :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "price_in_jpy",      :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "price_in_usd",      :precision => 8, :scale => 2, :default => 0.0
    t.integer  "shop_id"
  end

  add_index "items", ["height"], :name => "index_items_on_height"
  add_index "items", ["length"], :name => "index_items_on_length"
  add_index "items", ["mass"], :name => "index_items_on_mass"
  add_index "items", ["name_in_de"], :name => "index_items_on_name_in_de"
  add_index "items", ["name_in_en"], :name => "index_items_on_name_in_en"
  add_index "items", ["name_in_es"], :name => "index_items_on_name_in_es"
  add_index "items", ["name_in_fr"], :name => "index_items_on_name_in_fr"
  add_index "items", ["name_in_hi"], :name => "index_items_on_name_in_hi"
  add_index "items", ["name_in_it"], :name => "index_items_on_name_in_it"
  add_index "items", ["name_in_ja"], :name => "index_items_on_name_in_ja"
  add_index "items", ["name_in_zh"], :name => "index_items_on_name_in_zh"
  add_index "items", ["price_in_chf"], :name => "index_items_on_price_in_chf"
  add_index "items", ["price_in_cny"], :name => "index_items_on_price_in_cny"
  add_index "items", ["price_in_eur"], :name => "index_items_on_price_in_eur"
  add_index "items", ["price_in_gbp"], :name => "index_items_on_price_in_gbp"
  add_index "items", ["price_in_inr"], :name => "index_items_on_price_in_inr"
  add_index "items", ["price_in_jpy"], :name => "index_items_on_price_in_jpy"
  add_index "items", ["price_in_usd"], :name => "index_items_on_price_in_usd"
  add_index "items", ["shop_id"], :name => "index_items_on_shop_id"
  add_index "items", ["width"], :name => "index_items_on_width"

  create_table "shopkeepers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "shop_id"
  end

  add_index "shopkeepers", ["shop_id"], :name => "index_shopkeepers_on_shop_id"
  add_index "shopkeepers", ["user_id"], :name => "index_shopkeepers_on_user_id"

  create_table "shops", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_in_de",        :default => ""
    t.string   "name_in_en",        :default => ""
    t.string   "name_in_es",        :default => ""
    t.string   "name_in_fr",        :default => ""
    t.string   "name_in_hi",        :default => ""
    t.string   "name_in_it",        :default => ""
    t.string   "name_in_ja",        :default => ""
    t.string   "name_in_zh",        :default => ""
    t.text     "description_in_de", :default => ""
    t.text     "description_in_en", :default => ""
    t.text     "description_in_es", :default => ""
    t.text     "description_in_fr", :default => ""
    t.text     "description_in_hi", :default => ""
    t.text     "description_in_it", :default => ""
    t.text     "description_in_ja", :default => ""
    t.text     "description_in_zh", :default => ""
  end

  add_index "shops", ["name_in_de"], :name => "index_shops_on_name_in_de"
  add_index "shops", ["name_in_en"], :name => "index_shops_on_name_in_en"
  add_index "shops", ["name_in_es"], :name => "index_shops_on_name_in_es"
  add_index "shops", ["name_in_fr"], :name => "index_shops_on_name_in_fr"
  add_index "shops", ["name_in_hi"], :name => "index_shops_on_name_in_hi"
  add_index "shops", ["name_in_it"], :name => "index_shops_on_name_in_it"
  add_index "shops", ["name_in_ja"], :name => "index_shops_on_name_in_ja"
  add_index "shops", ["name_in_zh"], :name => "index_shops_on_name_in_zh"

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "password"
    t.string   "name_in_de",        :default => ""
    t.string   "name_in_en",        :default => ""
    t.string   "name_in_es",        :default => ""
    t.string   "name_in_fr",        :default => ""
    t.string   "name_in_hi",        :default => ""
    t.string   "name_in_it",        :default => ""
    t.string   "name_in_ja",        :default => ""
    t.string   "name_in_zh",        :default => ""
    t.text     "description_in_de", :default => ""
    t.text     "description_in_en", :default => ""
    t.text     "description_in_es", :default => ""
    t.text     "description_in_fr", :default => ""
    t.text     "description_in_hi", :default => ""
    t.text     "description_in_it", :default => ""
    t.text     "description_in_ja", :default => ""
    t.text     "description_in_zh", :default => ""
  end

  add_index "users", ["name_in_de"], :name => "index_users_on_name_in_de"
  add_index "users", ["name_in_en"], :name => "index_users_on_name_in_en"
  add_index "users", ["name_in_es"], :name => "index_users_on_name_in_es"
  add_index "users", ["name_in_fr"], :name => "index_users_on_name_in_fr"
  add_index "users", ["name_in_hi"], :name => "index_users_on_name_in_hi"
  add_index "users", ["name_in_it"], :name => "index_users_on_name_in_it"
  add_index "users", ["name_in_ja"], :name => "index_users_on_name_in_ja"
  add_index "users", ["name_in_zh"], :name => "index_users_on_name_in_zh"
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
