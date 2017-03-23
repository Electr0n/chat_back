class ApplicationController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  # REVIEW
  # protect_from_forgery with: :null_session
  def index
    data = params['data'].split('/?callback=')
    myJSON = JSON.parse data.first
    myJSON["msg"] = myJSON["age"].to_i < 18 ? ("Hello " + myJSON["name"] + "! You are too young.") : ("Hello " + myJSON["name"] + "! You are old enough. Welcome.")
    render json: myJSON, callback: data.last
  end

end
