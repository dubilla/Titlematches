require 'test_helper'

class TitlematchesControllerTest < ActionController::TestCase
  setup do
    @titlematch = titlematches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:titlematches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create titlematch" do
    assert_difference('Titlematch.count') do
      post :create, titlematch: { date_won: @titlematch.date_won, title_id: @titlematch.title_id, user: @titlematch.user }
    end

    assert_redirected_to titlematch_path(assigns(:titlematch))
  end

  test "should show titlematch" do
    get :show, id: @titlematch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @titlematch
    assert_response :success
  end

  test "should update titlematch" do
    put :update, id: @titlematch, titlematch: { date_won: @titlematch.date_won, title_id: @titlematch.title_id, user: @titlematch.user }
    assert_redirected_to titlematch_path(assigns(:titlematch))
  end

  test "should destroy titlematch" do
    assert_difference('Titlematch.count', -1) do
      delete :destroy, id: @titlematch
    end

    assert_redirected_to titlematches_path
  end
end
