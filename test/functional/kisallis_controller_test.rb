require 'test_helper'

class KisallisControllerTest < ActionController::TestCase
  setup do
    @kisalli = kisallis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kisallis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kisalli" do
    assert_difference('Kisalli.count') do
      post :create, kisalli: { aiemmin: @kisalli.aiemmin, lempiolut: @kisalli.lempiolut, miksi: @kisalli.miksi, miksiSina: @kisalli.miksiSina, mitaOdotat: @kisalli.mitaOdotat, muuta: @kisalli.muuta, name: @kisalli.name, opintojen_ka: @kisalli.opintojen_ka, opintopisteita: @kisalli.opintopisteita, opnro: @kisalli.opnro, sposti: @kisalli.sposti }
    end

    assert_redirected_to kisalli_path(assigns(:kisalli))
  end

  test "should show kisalli" do
    get :show, id: @kisalli
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kisalli
    assert_response :success
  end

  test "should update kisalli" do
    put :update, id: @kisalli, kisalli: { aiemmin: @kisalli.aiemmin, lempiolut: @kisalli.lempiolut, miksi: @kisalli.miksi, miksiSina: @kisalli.miksiSina, mitaOdotat: @kisalli.mitaOdotat, muuta: @kisalli.muuta, name: @kisalli.name, opintojen_ka: @kisalli.opintojen_ka, opintopisteita: @kisalli.opintopisteita, opnro: @kisalli.opnro, sposti: @kisalli.sposti }
    assert_redirected_to kisalli_path(assigns(:kisalli))
  end

  test "should destroy kisalli" do
    assert_difference('Kisalli.count', -1) do
      delete :destroy, id: @kisalli
    end

    assert_redirected_to kisallis_path
  end
end
