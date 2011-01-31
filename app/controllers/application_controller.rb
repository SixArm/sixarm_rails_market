class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_customizer

  private
  def layout_customizer
    @shop.key + '/application'
  end

  def layout_folder
    # To set the layout folder, we massage the request host 
    # into a shop key by doing these steps:
    #   - chop off the top level domain, e.g. ".com", ".net", etc.
    #   - chop off a leading "a." because we use this for our local testing.
    #
    # Examples:
    #   - a.foo.com => foo
    #   - www.foo.com => foo
    #   - abc.foo.com => abc.foo
    @shop = Shop.find_by_request_host(request.host())
  end

end
