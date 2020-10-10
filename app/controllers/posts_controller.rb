class PostsController < ApplicationController
  # before_action :move_to_index, except: [:index, :show, :search]


  def index
    @posts = Post.includes(:user).order("created_at: :desc")
  end

  def new 
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def search
    @posts = Post.search(params[:search])
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to user_path(current_user.id) #成功の場合
    else        
      render 'new' #失敗の場合 
    end
    # redirect_to user_path(current_user.id)
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to user_path(current_user.id)
  end


  private
    def post_params
      params.require(:post).permit(:title, :text, :clip).merge(user_id: current_user.id)
    end

    # def move_to_index
    #   redirect_to action: :index unless user_signed_in?
    # end
end





