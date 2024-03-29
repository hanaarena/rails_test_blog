class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    redirect_to @post if @comment.save
  end

  private 
    def comment_params 
     params.require(:comment).permit(:post_id, :content) 
    end 
end