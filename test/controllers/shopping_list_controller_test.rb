require 'test_helper'

class ShoppingListControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get shopping_list_index_url
    assert_response :success
  end

  test 'should get show' do
    get shopping_list_show_url
    assert_response :success
  end
end
