require 'test_helper'

class JatkosControllerTest < ActionController::TestCase
  setup do
    @jatko = jatkos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jatkos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jatko" do
    assert_difference('Jatko.count') do
      post :create, jatko: { name: @jatko.name, nick: @jatko.nick }
    end

    assert_redirected_to jatko_path(assigns(:jatko))
  end

  test "should show jatko" do
    get :show, id: @jatko
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jatko
    assert_response :success
  end

  test "should update jatko" do
    put :update, id: @jatko, jatko: { name: @jatko.name, nick: @jatko.nick }
    assert_redirected_to jatko_path(assigns(:jatko))
  end

  test "should destroy jatko" do
    assert_difference('Jatko.count', -1) do
      delete :destroy, id: @jatko
    end

    assert_redirected_to jatkos_path
  end
end
