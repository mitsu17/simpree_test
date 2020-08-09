class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new 
    @post = Post.new
  end

  def create
    @post = Post.create params.require(:post).permit(:video, :title, :text) # POINT
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id]) 
  end

  def update
    @post = Post.find(params[:id])
    @post.update params.require(:post).permit(:video, :title, :text) # POINT
    redirect_to @post
  end
end



