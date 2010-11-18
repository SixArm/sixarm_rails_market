class Shop < ActiveRecord::Base

  has_many :shopkeepers
  has_many :users, :through => :shopkeepers

  def name
    name_in_en
  end

  def description
    description_in_en
  end
  
end
