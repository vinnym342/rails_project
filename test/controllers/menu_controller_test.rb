require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get menu_index_url
    assert_response :success
  end
  test "should get menu titles" do
    get menu_index_url
    assert_select 'h1','Menu'
    assert_select 'h2','Drinks'
    assert_select 'h2','Food'
  end

end
