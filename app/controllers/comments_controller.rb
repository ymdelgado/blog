class CommentsController < ApplicationController

  before_action :authenticate_user!

  attr_reader :parent_post

	#def new
    #@comment = Comment.new
	#end

  def create
		@commentable = context
		@comment = @commentable.comments.new(comment_params)
		@comment.user = current_user
    @comment.commentable = @commentable
		@comment.post = @parent_post
		@comment.save
    redirect_to @parent_post
  end

private

  def comment_params
    params.require(:comment).permit(:body)
  end

	def context
		if params[:post_id]
	  	@parent_post = Post.find(params[:post_id])
      @parent_post
		else
			com= Comment.find(params[:commentable_id])
      @parent_post = Post.find(com.post_id)
      com
		end

	end

end
