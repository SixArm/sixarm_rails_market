class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
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

      # dimensions
      t.column :width, :integer
      t.column :height, :integer
      
      # locations
      t.column :src, :string, :default => "" # url to image src
      t.column :longdesc, :string, :default => "" # url to long description
      t.column :path, :string, :default => "" #  path to local filesystem

    end
  end

  def self.down
    drop_table :images
  end
end
