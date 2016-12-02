class PostsController < ApplicationController

  # TODO: add index, edit, update and delete actions.
  # TODO: use partial for new and edit views
  before_filter :authenticate_user!, :except => [:show, :index]
  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    @post.user = current_user
    if @post.save
      redirect_to root_path
    else
      render plain: "Not Valid data!", status: 422
    end
  end

  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def destroy
    @post = Post.find(params[:id])
    if current_user == @post.user
      @post.delete
    end 
  end 
  def edit
    @post = Post.find(params[:id])
    redirect_to root_path unless current_user == @post.user
  end
  def update
    @post = Post.find(params[:id])
    @post.update post_params
    redirect_to root_path
  end
  private

  def post_params
    params.require(:post).permit :title, :content
  end

end
