class PostsController < ApplicationController

  def index
    @posts = Post.all
    @tags = Tag.all
  end

  def show
    @post = Post.find(params[:id])
      # binding.pry
    # binding.pry
    @tags = Tag.all
    # @comments - Post.comments.build
    @comments = @post.comments
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
    @user = current_user
    @post = Post.find(params[:id])
    # binding.pry
    if params[:delete_tag] == "true"
      @tag = Tag.find(params[:format])
      @post.tags.delete(@tag)
      redirect_to post_path(@post)
      flash[:notice] = "successfully removed"
    elsif post_params[:comments]
      @comment = Comment.new(post_params[:comments])
      @post.comments << @comment
      @user.comments << @comment
      @post.save
      @user.save
      redirect_to post_path(@post)
    elsif post_params[:tags]
      @tag = Tag.find(post_params[:tags])
      @post.tags << @tag
      @post.save
      redirect_to post_path(@post)
      flash[:notice] = "successfully saved"
    else
      render :edit
      flash[:alert] = "unsuccessfully saved"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

private
  def post_params
    params.require(:post).permit(:title, :content, :tags, :image, :comments => [:content])
  end
end
