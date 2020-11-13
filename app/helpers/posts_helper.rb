module PostsHelper
  def params_helper
    params.require(:post).permit(:title, :body)
  end

  def post_author(post)
    post.user.username.to_s if user_signed_in?
  end
end
