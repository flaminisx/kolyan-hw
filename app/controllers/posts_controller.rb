class PostsController < ApplicationController

  # TODO: add index, edit, update and delete actions.
  # TODO: use partial for new and edit views

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      render json: @post, status: 201
    else
      render plain: "Not Valid data!", status: 422
    end
  end

  private

  def post_params
    params.require(:post).permit :title, :content
  end
end
