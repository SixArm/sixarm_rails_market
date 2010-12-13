class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_customizer

  private
  def layout_customizer
    layout_folder + "application"
  end

  def layout_folder
    # We trim a leading "a." because we use this
    # convention for localhost development.
    request.host().sub(/^a\./,'') + "/"
  end

end
