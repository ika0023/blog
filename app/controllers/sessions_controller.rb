class SessionsController < ApplicationController
  def login
    if request.post?
      user = User.find_by(name: params[:name])
      if user
         redirect_to "index_path"
      else
        flash[:danger] = "無効なユーザーです"
        render 'login'
      end
    end
  end

  def index
  end

  private

  def user_params
   # params.require(:name).permit(:name)
  end

end
