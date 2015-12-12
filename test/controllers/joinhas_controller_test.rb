require 'test_helper'

class JoinhasControllerTest < ActionController::TestCase
  setup do
    @joinha = joinhas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:joinhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joinha" do
    assert_difference('Joinha.count') do
      post :create, joinha: { description: @joinha.description, name: @joinha.name, photo: @joinha.photo, upload_date: @joinha.upload_date }
    end

    assert_redirected_to joinha_path(assigns(:joinha))
  end

  test "should show joinha" do
    get :show, id: @joinha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joinha
    assert_response :success
  end

  test "should update joinha" do
    patch :update, id: @joinha, joinha: { description: @joinha.description, name: @joinha.name, photo: @joinha.photo, upload_date: @joinha.upload_date }
    assert_redirected_to joinha_path(assigns(:joinha))
  end

  test "should destroy joinha" do
    assert_difference('Joinha.count', -1) do
      delete :destroy, id: @joinha
    end

    assert_redirected_to joinhas_path
  end
end
