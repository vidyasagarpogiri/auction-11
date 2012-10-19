require 'test_helper'

class DonorsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:donors)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_donor
    assert_difference('Donor.count') do
      post :create, :donor => { }
    end

    assert_redirected_to donor_path(assigns(:donor))
  end

  def test_should_show_donor
    get :show, :id => donors(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => donors(:one).id
    assert_response :success
  end

  def test_should_update_donor
    put :update, :id => donors(:one).id, :donor => { }
    assert_redirected_to donor_path(assigns(:donor))
  end

  def test_should_destroy_donor
    assert_difference('Donor.count', -1) do
      delete :destroy, :id => donors(:one).id
    end

    assert_redirected_to donors_path
  end
end
