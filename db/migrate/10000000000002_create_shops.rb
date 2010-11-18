class CreateShops < ActiveRecord::Migration

  TABLE=:shops

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
      
    end

    add_index(TABLE, :name_in_de)
    add_index(TABLE, :name_in_en)
    add_index(TABLE, :name_in_es)
    add_index(TABLE, :name_in_fr)
    add_index(TABLE, :name_in_hi)
    add_index(TABLE, :name_in_it)
    add_index(TABLE, :name_in_ja)
    add_index(TABLE, :name_in_zh)

  end

  def self.down
    drop_table TABLE
  end
end
