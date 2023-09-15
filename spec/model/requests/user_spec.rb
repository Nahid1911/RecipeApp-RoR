require 'rails_helper'

RSpec.describe UsersController, type: :request do
  describe 'GET #index' do
    it 'returns a success response' do
      user = User.create(id: 1)
      get user_path(user.id)
      expect(response).to be_successful
    end

  #   it 'renders a correct template' do
  #     user = User.create(id: 1)
  #     get user_posts_path(user_id: user.id)
  #     expect(response).to render_template(:index)
  #   end

  #   it 'returns the correct placeholder text in the response body' do
  #     user = User.create(id: 1)
  #     get user_posts_path(user_id: user.id)
  #     expect(response.body).to include('Posts by User')
  #   end
  end

  # describe 'GET #show' do
  #   it 'returns a successful response' do
  #     get user_post_path(user_id: 1, id: 1)
  #     expect(response).to be_successful
  #   end
  # end

  # it 'renders the show template' do
  #   get user_post_path(user_id: 1, id: 1)
  #   expect(response).to render_template(:show)
  # end

  # it 'includes correct placeholder text in the response body' do
  #   get user_post_path(user_id: 1, id: 1)
  #   expect(response.body).to include('Single Post')
  # end
end
