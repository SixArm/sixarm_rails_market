# -*- coding: utf-8 -*-

class Image < ActiveRecord::Base

  def name
    name_in_en
  end

end
