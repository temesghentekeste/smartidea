module SiteHelper
  def user_or_guest
    if user_signed_in?
      render '/layouts/navbar_user'
    else
      render '/layouts/navbar_guest'
    end
  end

  def landing_page
    if user_signed_in? 
      controller.redirect_to home_path
    else 
      render '/pages/guest_landing'
    end 
  end

  def add_new_post
    if user_signed_in? 
      render '/components/post_form'
    end
  end
end