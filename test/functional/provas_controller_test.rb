require 'test_helper'

class ProvasControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:provas)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_prova
    assert_difference('Prova.count') do
      post :create, :prova => { }
    end

    assert_redirected_to prova_path(assigns(:prova))
  end

  def test_should_show_prova
    get :show, :id => provas(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => provas(:one).id
    assert_response :success
  end

  def test_should_update_prova
    put :update, :id => provas(:one).id, :prova => { }
    assert_redirected_to prova_path(assigns(:prova))
  end

  def test_should_destroy_prova
    assert_difference('Prova.count', -1) do
      delete :destroy, :id => provas(:one).id
    end

    assert_redirected_to provas_path
  end
end
