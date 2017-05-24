class SessionsController < ApplicationController

  def welcome
    if user_signed_in?
    	@user = current_user
      	redirect_to recipes_path
    else
      	redirect_to new_user_session_path
    end

  end

end
