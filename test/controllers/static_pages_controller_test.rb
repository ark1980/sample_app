require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup_title
    @base_title = "Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{setup_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{setup_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{setup_title}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{setup_title}"
  end
end
