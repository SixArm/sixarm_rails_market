# -*- coding: utf-8 -*-

class Item < ActiveRecord::Base

  belongs_to :shop
  has_many :shopkeepers, :through => :shop
  has_one :etsy_listing
  has_one :paypal_listing

  def name
    name_in_en
  end

  def description
    description_in_en
  end

  def price
    price_in_usd
  end

  def weight
    mass
  end

  def volume
    length * width * height
  end

  def tags
    []
  end

end
