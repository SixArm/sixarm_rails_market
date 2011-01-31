class EtsyListing < ActiveRecord::Base

  belongs_to :item

  # Facade

  def url
    "http://www.etsy.com/listing/#{xid}/#{slug}"
  end

end

