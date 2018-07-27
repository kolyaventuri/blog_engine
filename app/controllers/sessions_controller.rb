class SessionsController < ApplicationController
  def create
    if user = Author.from_omniauth(request.env['omniauth.auth'].to_hash)
      session[:user_id] = user.id
    end

    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
