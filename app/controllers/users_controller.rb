class UsersController < ApplicationController
  def index
    @post = Post.new
  end

  def new
  end

  def show
    @item = Item.new
  end
end
