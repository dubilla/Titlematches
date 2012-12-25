require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    dan = users(:one)
    post :create, name: dan.name, password: 'secret'
    assert_redirected_to titlematches_url
    assert_equal dan.id, session[:user_id]
  end

  test "should fail login" do
    dan = users(:one)
    post :create, name: dan.name, password: 'wrong'
    assert_redirected_to login_url
  end

  test "should logout" do
    delete :destroy
    assert_redirected_to titles_url
  end

end
