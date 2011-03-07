#!/usr/bin/env ruby
# -*- coding: utf-8 -*-


class CreateEtsyListings < ActiveRecord::Migration

  TABLE=:etsy_listings

  def self.up

    create_table TABLE do |t|
      t.timestamps
      t.belongs_to :item
      t.column :xid, :integer
      t.column :slug, :string, :default => ""
    end

    add_index(TABLE, :xid)
    add_index(TABLE, :item_id)

  end

  def self.down
    drop_table TABLE
  end

end
