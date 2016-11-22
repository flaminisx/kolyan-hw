require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  it 'should get /new return success' do
    get :new
    expect(response).to have_http_status(:success)
  end
  it 'post /posts should create new post' do
    starting_count = Post.count
    post :create, { post: { title: "New Post!", content: "Content" } }
    expect(response).to have_http_status(:created)
    expect(starting_count + 1).to eq(Post.count)
  end
  it 'get /posts/:id/edit should return success' do
    get :edit
    expect(response).to have_http_status(:success)
  end
  it 'put /posts/:id should change post value' do
    post = Post.first
    content = Post.first.content
    put :update, { post: {id: post.id, title: "Another title" } }
    expect(response).to have_http_status(:success)
    expect(Post.first.title).to eq("Another title")
    expect(Post.first.content).to eq(content) # expect Post content to not be changed
  end
  it 'get /posts should return success' do
    get :index
    expect(response).to have_http_status(:success)
  end
end
