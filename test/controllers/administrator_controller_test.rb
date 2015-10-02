require 'test_helper'

class AdministratorControllerTest < ActionController::TestCase
  test "should get User" do
    get :User
    assert_response :success
  end

end
