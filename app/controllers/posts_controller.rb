class PostsController < ApplicationController
  def index
    @post = post.all
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end
end
