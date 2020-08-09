class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end


  # def create
  #   @post = post.new(post_params)

  #   respond_to do |format|
  #     if @post.save
  #       format.html { redirect_to @post, notice: 'Movie was successfully created.' }
  #       # format.json { render :show, status: :created, location: @movie }
  #     else
  #       format.html { render :new }
  #       # format.json { render json: @post.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  private
  def post_params
    params.permit(:video, :title, :text)
  end




end
