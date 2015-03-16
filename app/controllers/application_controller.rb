class ApplicationController < ActionController::Base

  before_action :require_login

  def current_user
    if request.headers['Authorization']
      decoded_auth_token = JWT.decode(request.headers['Authorization'], nil, false)
      User.find_by(id: decoded_auth_token[0]["user_id"])
    end
  end

  helper_method :current_user


  private

  def require_login
    unless current_user
      render json: { error: "Sorry, you can't come in." }, status: :unauthorized
    end
  end

end
