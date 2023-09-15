require 'rails_helper'

RSpec.describe UsersController, type: :request do
  describe 'GET #index' do
    it 'returns a success response' do
      user = User.create(id: 1)
      get user_path(user.id)
      expect(response).to be_successful
    end
end
