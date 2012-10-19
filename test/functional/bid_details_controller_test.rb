require 'test_helper'

class BidDetailsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:bid_details)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_bid_details
    assert_difference('BidDetails.count') do
      post :create, :bid_details => { }
    end

    assert_redirected_to bid_details_path(assigns(:bid_details))
  end

  def test_should_show_bid_details
    get :show, :id => bid_details(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => bid_details(:one).id
    assert_response :success
  end

  def test_should_update_bid_details
    put :update, :id => bid_details(:one).id, :bid_details => { }
    assert_redirected_to bid_details_path(assigns(:bid_details))
  end

  def test_should_destroy_bid_details
    assert_difference('BidDetails.count', -1) do
      delete :destroy, :id => bid_details(:one).id
    end

    assert_redirected_to bid_details_path
  end
end
