require 'rails_helper'
RSpec.describe User, type: :Model do
    it 'name should not be empty' do
        user = User.new(name: 'ronnie')
        user.name = nil
        expect(user).to_not be_valid
    end
end