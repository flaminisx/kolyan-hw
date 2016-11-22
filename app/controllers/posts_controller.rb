class PostsController < ApplicationController

  # TODO: add index, edit, update and delete actions.
  # TODO: use partial for new and edit views

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      render :show, status: 201
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
    Post.find(params[:id]).delete 
    redirect_to posts_path
  end 
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    @post.update post_params
    redirect_to post_path(@post)
  end
  private

  def post_params
    params.require(:post).permit :title, :content
  end

end
