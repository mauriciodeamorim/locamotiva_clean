require 'test_helper'

class AtletasControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:atletas)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_atleta
    assert_difference('Atleta.count') do
      post :create, :atleta => { }
    end

    assert_redirected_to atleta_path(assigns(:atleta))
  end

  def test_should_show_atleta
    get :show, :id => atletas(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => atletas(:one).id
    assert_response :success
  end

  def test_should_update_atleta
    put :update, :id => atletas(:one).id, :atleta => { }
    assert_redirected_to atleta_path(assigns(:atleta))
  end

  def test_should_destroy_atleta
    assert_difference('Atleta.count', -1) do
      delete :destroy, :id => atletas(:one).id
    end

    assert_redirected_to atletas_path
  end
end
