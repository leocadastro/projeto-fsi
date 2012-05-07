require 'test_helper'

class TiposProjetosControllerTest < ActionController::TestCase
  setup do
    @tipos_projeto = tipos_projetos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipos_projetos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipos_projeto" do
    assert_difference('TiposProjeto.count') do
      post :create, tipos_projeto: @tipos_projeto.attributes
    end

    assert_redirected_to tipos_projeto_path(assigns(:tipos_projeto))
  end

  test "should show tipos_projeto" do
    get :show, id: @tipos_projeto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipos_projeto
    assert_response :success
  end

  test "should update tipos_projeto" do
    put :update, id: @tipos_projeto, tipos_projeto: @tipos_projeto.attributes
    assert_redirected_to tipos_projeto_path(assigns(:tipos_projeto))
  end

  test "should destroy tipos_projeto" do
    assert_difference('TiposProjeto.count', -1) do
      delete :destroy, id: @tipos_projeto
    end

    assert_redirected_to tipos_projetos_path
  end
end
