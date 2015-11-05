class PostsController < ApplicationController
  def new
    @post = Post.new
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

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
