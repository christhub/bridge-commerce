class PostsController < ApplicationController
  def index
    @posts = Post.all
    @tags = Tag.all
  end

  def show
    @post = Post.find(params[:id])
    @tags = Tag.all
    render :show
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:id])
    # binding.pry
    if params[:delete_tag] == "true"
      @tag = Tag.find(params[:format])
      @tag.update(post_id: "") #NEEDS TO BE CHANGED FOR MANY TO MANY RELATIONSHIP
      redirect_to post_path(@post)
      flash[:notice] = "successfully removed"
    elsif @post.update(post_params)
      tags = params[:post]
      @tag = Tag.find(tags[:tags])
      @tag.update(post_id: @post.id)
      redirect_to post_path(@post)
      flash[:notice] = "successfully saved"
    else
      render :edit
      flash[:alert] = "unsuccessfully saved"
    end
  end

  def delete
    @post = Post.find(params[:post_id])
    redirect_to post_path(@post)
  end

private
  def post_params
    params.require(:post).permit(:title, :content, :tag)
  end
end
