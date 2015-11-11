class PostsController < ApplicationController
  def index
    @posts = Post.all
    @comments = Comment.all
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      flash[:alert] = 'Sa-say whaat?'
    end
  end

  def show
    @post = Post.find(params[:id])

  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
