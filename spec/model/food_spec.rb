require 'rails_helper'

RSpec.describe Food, type: :Model do
    before :each do
        @user = User.new(name: 'ronnie', email: 'ronnie@gmail.com', password: '123456')
        @food = @user.foods.new(name: 'lettuce', measurement_unit: 'grams', price: 40.0, quantity: 3)
    end

    it 'should create food with valid values' do
        expect(@food).to be_valid
        expect(@food.name).to eq('lettuce')
        expect(@food.measurement_unit).to eq('grams')
        expect(@food.price).to eq(40.0)
        expect(@food.quantity).to eq(3)
    end

    it 'should not create food with missing values' do
        @user = User.new(name: 'ronnie', email: 'ronnie@gmail.com', password: '123456')
        @food = @user.foods.new(name: '')
        expect(@food).not_to be_valid
    end
end