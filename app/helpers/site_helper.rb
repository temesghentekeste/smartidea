module SiteHelper
  def user_or_guest
    if user_signed_in?
      render '/layouts/navbar_user'
    else
      render '/layouts/navbar_guest'
    end
  end
end