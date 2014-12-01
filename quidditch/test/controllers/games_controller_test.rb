require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get update_statistics" do
    get :update_statistics
    assert_response :success
  end

end
