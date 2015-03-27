class ApplicationController < ActionController::Base

  before_action :require_login

  def current_user
    unless request.headers['HTTP_AUTHORIZATION'] == nil
      decoded_auth_token = JWT.decode(request.headers['HTTP_AUTHORIZATION'], nil, false)
      User.find_by(id: decoded_auth_token[0]["user_id"])
    end
  end

  def rant_match
    rant_list = Rant.where(user_id: current_user.id).pluck(:id)
    @rant = Rant.find(params[:id])
    unless rant_list.include?(rant.id)
      raise render 'public/404', status: :not_found
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
