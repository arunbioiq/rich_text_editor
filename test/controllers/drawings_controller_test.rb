require 'test_helper'

class DrawingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get drawings_new_url
    assert_response :success
  end

  test "should get show" do
    get drawings_show_url
    assert_response :success
  end

end
