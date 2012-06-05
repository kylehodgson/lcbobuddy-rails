class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :add_allow_origin_header

  def add_allow_origin_header
    headers['access-control-allow-origin'] = "*"
  end
end
