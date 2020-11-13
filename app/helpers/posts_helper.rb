module PostsHelper
  def params_helper
    params.require(:post).permit(:title, :body)
  end

  def post_author(post)
    if user_signed_in?
      "#{post.user.username}"
    end
  end

end
