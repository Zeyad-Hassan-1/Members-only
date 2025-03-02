class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    @post.author = current_user.email
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
