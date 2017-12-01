require 'test_helper'

class GeneralPagesControllerTest < ActionDispatch::IntegrationTest

	
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Welcome to the Book Management"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Welcome to the Book Management"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Welcome to the Book Management"
  end


  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Welcome to the Book Management"
  end


end
