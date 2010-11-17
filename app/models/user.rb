class User < ActiveRecord::Base

  has_many :shopkeepers

  def name
    name_in_en
  end
  
  def description
    description_in_en
  end

end
