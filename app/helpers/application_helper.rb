module ApplicationHelper
    def links_display
        if user_signed_in?
          link_to('Logout', destroy_user_session_path, method: :delete)
        end
    end
end
