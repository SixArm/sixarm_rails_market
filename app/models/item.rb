class Item < ActiveRecord::Base

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

end
