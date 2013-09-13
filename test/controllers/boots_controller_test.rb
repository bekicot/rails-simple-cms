require 'test_helper'

class BootsControllerTest < ActionController::TestCase
  setup do
    @boot = boots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boot" do
    assert_difference('Boot.count') do
      post :create, boot: { dec: @boot.dec, title: @boot.title }
    end

    assert_redirected_to boot_path(assigns(:boot))
  end

  test "should show boot" do
    get :show, id: @boot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boot
    assert_response :success
  end

  test "should update boot" do
    patch :update, id: @boot, boot: { dec: @boot.dec, title: @boot.title }
    assert_redirected_to boot_path(assigns(:boot))
  end

  test "should destroy boot" do
    assert_difference('Boot.count', -1) do
      delete :destroy, id: @boot
    end

    assert_redirected_to boots_path
  end
end
