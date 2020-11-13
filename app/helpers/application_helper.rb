module ApplicationHelper
  def links_display
    links = ''
    if user_signed_in?
      links << link_to('Logout', destroy_user_session_path, method: :delete)
      links << ' | '
      links << link_to('Create Post', new_post_path)
    else
      links << link_to('Log In', new_user_session_path)
      links << ' | '
      links << link_to('Sign Up', new_user_registration_path)
    end
    links.html_safe
  end
end
