module PostsHelper
  def post_author(post)
    post.user.username.to_s if user_signed_in?
  end
end
