class ApplicationController < ActionController::Base
  after_action :allow_iframe
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def allow_iframe
    puts "Entered allow frame"
    response.headers['X-Frame-Options'] = 'ALLOW-FROM http://codenameapp.herokuapp.com/'
    
  end
end
