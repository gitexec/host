require 'test_helper'

module HostEngine1
  class Engine1sControllerTest < ActionController::TestCase
    setup do
      @engine1 = host_engine1_engine1s(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:engine1s)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create engine1" do
      assert_difference('Engine1.count') do
        post :create, engine1: { title: @engine1.title }
      end

      assert_redirected_to engine1_path(assigns(:engine1))
    end

    test "should show engine1" do
      get :show, id: @engine1
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @engine1
      assert_response :success
    end

    test "should update engine1" do
      patch :update, id: @engine1, engine1: { title: @engine1.title }
      assert_redirected_to engine1_path(assigns(:engine1))
    end

    test "should destroy engine1" do
      assert_difference('Engine1.count', -1) do
        delete :destroy, id: @engine1
      end

      assert_redirected_to engine1s_path
    end
  end
end
