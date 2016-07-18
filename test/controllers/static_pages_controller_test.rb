require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
   def setup
    @base_title = "Juke joint , Hand picked Music for your soul"
  end

  test "should get root" do
    get static_pages_home_url
    assert_response :success
  end



  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Juke joint , Hand picked Music for your soul"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Juke joint , Hand picked Music for your soul"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Juke joint , Hand picked Music for your soul"
  end

end
