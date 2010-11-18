class CreateItems < ActiveRecord::Migration

  TABLE=:items

  def self.up
    create_table TABLE do |t|
      t.timestamps

      # name
      t.column :name_in_de, :string, :default => ""  # de = deutsch
      t.column :name_in_en, :string, :default => ""  # en = english
      t.column :name_in_es, :string, :default => ""  # es = espanol 
      t.column :name_in_fr, :string, :default => ""  # fr = french
      t.column :name_in_hi, :string, :default => ""  # hi = hindi
      t.column :name_in_it, :string, :default => ""  # it = italian
      t.column :name_in_ja, :string, :default => ""  # ja = japanese
      t.column :name_in_zh, :string, :default => ""  # zh = chinese

      # description
      t.column :description_in_de, :text, :default => ""  # de = deutsch
      t.column :description_in_en, :text, :default => ""  # en = english
      t.column :description_in_es, :text, :default => ""  # es = espanol
      t.column :description_in_fr, :text, :default => ""  # fr = french
      t.column :description_in_hi, :text, :default => ""  # hi = hindi
      t.column :description_in_it, :text, :default => ""  # it = italian
      t.column :description_in_ja, :text, :default => ""  # ja = japanese
      t.column :description_in_zh, :text, :default => ""  # zh = chinese 

      # dimension
      t.column :length, :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :width,  :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :height, :decimal, :precision => 8, :scale => 2, :default => 0
      t.column :mass,   :decimal, :precision => 8, :scale => 2, :default => 0

      # price
      t.column :price_in_chf, :decimal, :precision => 8, :scale => 2, :default => 0  # swiss francs
      t.column :price_in_cny, :decimal, :precision => 8, :scale => 2, :default => 0  # china yuan
      t.column :price_in_eur, :decimal, :precision => 8, :scale => 2, :default => 0  # euro
      t.column :price_in_gbp, :decimal, :precision => 8, :scale => 2, :default => 0  # great britain pound
      t.column :price_in_inr, :decimal, :precision => 8, :scale => 2, :default => 0  # india rupee
      t.column :price_in_jpy, :decimal, :precision => 8, :scale => 2, :default => 0  # japan yen
      t.column :price_in_usd, :decimal, :precision => 8, :scale => 2, :default => 0  # united states dollar

      # associations
      t.column :shop_id, :integer  # belongs to
      
    end

    add_index(TABLE, :name_in_de)
    add_index(TABLE, :name_in_en)
    add_index(TABLE, :name_in_es)
    add_index(TABLE, :name_in_fr)
    add_index(TABLE, :name_in_hi)
    add_index(TABLE, :name_in_it)
    add_index(TABLE, :name_in_ja)
    add_index(TABLE, :name_in_zh)
    add_index(TABLE, :length)
    add_index(TABLE, :width) 
    add_index(TABLE, :height) 
    add_index(TABLE, :mass)
    add_index(TABLE, :price_in_chf) 
    add_index(TABLE, :price_in_cny) 
    add_index(TABLE, :price_in_eur) 
    add_index(TABLE, :price_in_gbp) 
    add_index(TABLE, :price_in_inr)
    add_index(TABLE, :price_in_jpy) 
    add_index(TABLE, :price_in_usd) 
    add_index(TABLE, :shop_id) 

  end

  def self.down
    drop_table TABLE
  end

end
