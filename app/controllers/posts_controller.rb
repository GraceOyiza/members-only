class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params_helper)
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = 'Post created successfully'
      redirect_to root_path
    else
      render :new
    end
  end

  protected

  def params_helper
    params.require(:post).permit(:title, :body)
  end
end
