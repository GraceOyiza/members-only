module UsersHelper
    def params_helper
        params.require(:user).permit(:username)
    end
end
