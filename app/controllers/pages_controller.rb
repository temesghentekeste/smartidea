class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    # grap the username from the URL
    if(User.find_by_username(params[:id]))
      @username = params[:id]
    else
      # redirect to 404 (root for now)
      redirect_to root_path, notice: 'User not found'
    end
  end

  def explore
  end
end
