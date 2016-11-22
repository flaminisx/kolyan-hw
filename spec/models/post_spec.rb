require 'rails_helper'

RSpec.describe Post, type: :model do
  it "validates presence of title" do
    post = Post.new(content: "some content")
    post.save
    expect(post.id).to eq(nil)
  end
end
