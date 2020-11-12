module PostsHelper
    def params_helper
        params.require(:post).permit(:title, :body)
    end
end
