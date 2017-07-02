class SessionsController < ApplicationController
  def login
    if request.post?
      user = User.find_by(name: params[:name])
      if user
        session[:user_id] = user.id
         redirect_to root_path
      else
        flash[:danger] = "無効なユーザーです"
        render 'login'
      end
    end
  end

  def index
  end
end
