class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      render json: @post
    else
      render plain: "hui"
    end
  end

  private

  def post_params
    params.require(:post).permit :title, :content
  end
end