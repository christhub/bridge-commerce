class CommentController < ApplicationController

  def create
    @comment = Comment.new
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    render :edit
  end


private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
