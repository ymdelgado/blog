class PostsController < ApplicationController

	before_filter :authenticate_user!

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create

    @post = Post.new(post_params)
		@post.user_id= current_user.id
    if @post.save
      redirect_to @post
    else
      render 'new'
    end

  end


  def edit
  end

  def show
    @post = Post.find(params[:id])
  end


  def destroy
  end

private
  def post_params
    params.require(:post).permit( :title, :body )
  end

end
