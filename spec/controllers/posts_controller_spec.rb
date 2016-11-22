require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  it 'should get /new return success' do
    get :new
    expect(response).to have_http_status(:success)
  end
end
