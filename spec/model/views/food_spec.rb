require 'rails_helper'

RSpec.describe 'User Foods', type: :feature do
  let(:user) { User.create(name: 'User One', email: 'userone@example.com', password: '111111') }

  describe 'Viewing User Foods without logged in' do
    it 'displays a message error message to user' do
      visit foods_path(user)

      expect(page).to have_content('You need to sign in or sign up before continuing.')
    end
  end
end