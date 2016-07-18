require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
   

  test "should get root" do
    get root_path
    assert_response :success
  end



  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Juke joint , Hand picked Music for your soul"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Juke joint , Hand picked Music for your soul"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Juke joint , Hand picked Music for your soul"
  end

end
