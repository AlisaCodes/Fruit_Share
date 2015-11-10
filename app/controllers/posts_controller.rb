class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new

    respond_to do |format|
      format.html { redirect_to posts_path}
      format.js
    end
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      respond_to do |format|
        format.html { redirect_to user_path }
        format.js
      end
    else
      flash[:alert] = 'Sa-say whaat?'
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
