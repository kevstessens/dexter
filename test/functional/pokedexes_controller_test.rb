require 'test_helper'

class PokedexesControllerTest < ActionController::TestCase
  setup do
    @pokedex = pokedexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokedexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokedex" do
    assert_difference('Pokedex.count') do
      post :create, pokedex: { name: @pokedex.name, quantity: @pokedex.quantity }
    end

    assert_redirected_to pokedex_path(assigns(:pokedex))
  end

  test "should show pokedex" do
    get :show, id: @pokedex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokedex
    assert_response :success
  end

  test "should update pokedex" do
    put :update, id: @pokedex, pokedex: { name: @pokedex.name, quantity: @pokedex.quantity }
    assert_redirected_to pokedex_path(assigns(:pokedex))
  end

  test "should destroy pokedex" do
    assert_difference('Pokedex.count', -1) do
      delete :destroy, id: @pokedex
    end

    assert_redirected_to pokedexes_path
  end
end
