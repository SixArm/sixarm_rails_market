#!/usr/bin/env ruby
# -*- coding: utf-8 -*-


class CreateShopkeepers < ActiveRecord::Migration

  TABLE=:shopkeepers

  def self.up

    create_table TABLE do |t|
      t.timestamps
      t.column :user_id, :integer
      t.column :shop_id, :integer
    end

    add_index(TABLE, :user_id)
    add_index(TABLE, :shop_id)

  end

  def self.down
    drop_table TABLE
  end

end
