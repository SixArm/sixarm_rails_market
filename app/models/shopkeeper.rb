#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class Shopkeeper < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user
end
