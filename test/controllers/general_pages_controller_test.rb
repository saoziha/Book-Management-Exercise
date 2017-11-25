require 'test_helper'

class GeneralPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get general_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get general_pages_help_url
    assert_response :success
  end

end
