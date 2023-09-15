require 'rails_helper'
RSpec.describe User, type: :Model do
  it 'name should valid' do
    user = User.new(name: 'ronnie', email: 'ronnie@gmail.com', password: '123456')
    expect(user).to be_valid
  end

  it 'should be invalid without a name' do
    user = User.new(name: '', email: 'ronnie@gmail.com', password: '123456')
    expect(user).not_to be_valid
  end
end
