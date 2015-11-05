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
    @hash = Gmaps4rails.build_markers(@post) do |post, marker|
      marker.lat post.latitude
      marker.lng post.longitude
    end
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
    # binding.pry
    if params[:delete_tag] == "true"
      @tag = Tag.find(params[:format])
      @post.tags.delete(@tag)
      redirect_to post_path(@post)
      flash[:notice] = "successfully removed"
    elsif params[:add_cart] == "true"
      @user = current_user
      @cart = current_user.cart
      @post = Post.find(params[:id])
      # binding.pry
      if @cart
        @cart.posts << @post
        @post.save
      else
        cart = Cart.create(user_id: current_user.id)
        cart.posts << @post
        cart.save
        redirect_to post_path(@post)
      end
    elsif post_params[:comments]
      @comment = Comment.new(post_params[:comments])
      respond_to do |format|
        format.js
        format.html {redirect_to post_path(@post)}
      end
      @post.comments << @comment
      @user.comments << @comment
      @post.save
      @user.save

    elsif post_params[:tags]
      @tag = Tag.find(post_params[:tags])
      @post.tags << @tag
      @post.save
      redirect_to post_path(@post)
      flash[:notice] = "successfully saved"
    elsif @post.update(post_params)
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
    @user = current_user
    # binding.pry
    if params[:remove_item] = "true"
      @user.cart.posts.delete(@post)
      redirect_to cart_index_path
    else
      @post.destroy
      redirect_to posts_path
    end
  end

private
  def post_params
    params.require(:post).permit(:title, :content, :tags, :image, :price, :address, :latitude, :longitude, :comments => [:content])
  end
end
