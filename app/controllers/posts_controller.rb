class PostsController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new 
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    redirect_to root_path
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to root_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end


  private
    def post_params
      params.require(:post).permit(:title, :text, :clip)
    end


end





