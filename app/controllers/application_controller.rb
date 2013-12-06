class ApplicationController < ActionController::Base
  after_action :allow_iframe, :index
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token  
  def index
    
  end

  def allow_iframe
    puts "Entered allow frame"
    response.headers['X-Frame-Options'] = 'ALLOW-FROM http://codenameapp.herokuapp.com/'
    
  end

  def login
    user = User.find_by_phone(params[:phoneNumber])
    if user.authenticate(params[:password])
      render json: {logged_in: true}
    else
      render json: {logged_in: false}
    end
  end
end
