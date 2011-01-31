class CreatePayPalListings < ActiveRecord::Migration

  TABLE=:paypal_listings

  def self.up

    create_table TABLE do |t|
      t.timestamps
      t.belongs_to :item
      t.column :code, :string, :default => ""
      t.column :description, :string, :default => ""
      t.column :hosted_button_xid, :string, :default => ""
    end

    add_index(TABLE, :item_id)

  end

  def self.down
    drop_table TABLE
  end

end

