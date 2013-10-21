require 'test_helper'

class ColumnSamplesControllerTest < ActionController::TestCase
  setup do
    @column_sample = column_samples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:column_samples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create column_sample" do
    assert_difference('ColumnSample.count') do
      post :create, column_sample: { c1: @column_sample.c1, c2: @column_sample.c2, c3: @column_sample.c3 }
    end

    assert_redirected_to column_sample_path(assigns(:column_sample))
  end

  test "should show column_sample" do
    get :show, id: @column_sample
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @column_sample
    assert_response :success
  end

  test "should update column_sample" do
    patch :update, id: @column_sample, column_sample: { c1: @column_sample.c1, c2: @column_sample.c2, c3: @column_sample.c3 }
    assert_redirected_to column_sample_path(assigns(:column_sample))
  end

  test "should destroy column_sample" do
    assert_difference('ColumnSample.count', -1) do
      delete :destroy, id: @column_sample
    end

    assert_redirected_to column_samples_path
  end
end
