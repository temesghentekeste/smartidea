class ApplicationController < ActionController::Base
  before_action :profile_info

  private
  def profile_info
    if params[:id]
      @user_profile = User.find_by_username(params[:id])
    end
  end

end
