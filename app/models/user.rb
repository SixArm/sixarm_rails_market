#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class User < ActiveRecord::Base

  has_many :shopkeepers
  has_many :shops, :through => :shopkeepers

  def name
    name_in_en
  end
  
  def description
    description_in_en
  end

end
