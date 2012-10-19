require 'test_helper'

class BiddersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:bidders)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_bidder
    assert_difference('Bidder.count') do
      post :create, :bidder => { }
    end

    assert_redirected_to bidder_path(assigns(:bidder))
  end

  def test_should_show_bidder
    get :show, :id => bidders(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => bidders(:one).id
    assert_response :success
  end

  def test_should_update_bidder
    put :update, :id => bidders(:one).id, :bidder => { }
    assert_redirected_to bidder_path(assigns(:bidder))
  end

  def test_should_destroy_bidder
    assert_difference('Bidder.count', -1) do
      delete :destroy, :id => bidders(:one).id
    end

    assert_redirected_to bidders_path
  end
end
