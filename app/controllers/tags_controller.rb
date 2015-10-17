class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    render :show
  end

  def new
    @tag = Tag.new
    render :new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path
    else
      render :new
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    render :edit
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to tags_path
    else
      render :edit
  end

  private
  def tag_params
    params.require(:tag).permit(:title)
  end
end
