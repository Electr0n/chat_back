class ApplicationController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  # REVIEW
  # protect_from_forgery with: :null_session
  def index
    # info = data
    # myFunc(JSON.stringify("Hello" + info.name))
    myJSON = '{"name":"Eugene", "age":30, "city":"New York"}'
    render json: myJSON, :callback => params['callback']
  end

end
