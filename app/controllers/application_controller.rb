class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :application_layout

  private
  def application_layout
    request.host().sub(/^a\./,'')
  end

end
