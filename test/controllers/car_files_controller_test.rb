require 'test_helper'

class CarFilesControllerTest < ActionController::TestCase
  setup do
    @car_file = car_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_file" do
    assert_difference('CarFile.count') do
      post :create, car_file: { car_id: @car_file.car_id, office_id: @car_file.office_id }
    end

    assert_redirected_to car_file_path(assigns(:car_file))
  end

  test "should show car_file" do
    get :show, id: @car_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_file
    assert_response :success
  end

  test "should update car_file" do
    patch :update, id: @car_file, car_file: { car_id: @car_file.car_id, office_id: @car_file.office_id }
    assert_redirected_to car_file_path(assigns(:car_file))
  end

  test "should destroy car_file" do
    assert_difference('CarFile.count', -1) do
      delete :destroy, id: @car_file
    end

    assert_redirected_to car_files_path
  end
end
