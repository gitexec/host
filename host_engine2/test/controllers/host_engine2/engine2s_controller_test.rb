require 'test_helper'

module HostEngine2
  class Engine2sControllerTest < ActionController::TestCase
    setup do
      @engine2 = host_engine2_engine2s(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:engine2s)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create engine2" do
      assert_difference('Engine2.count') do
        post :create, engine2: { title: @engine2.title }
      end

      assert_redirected_to engine2_path(assigns(:engine2))
    end

    test "should show engine2" do
      get :show, id: @engine2
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @engine2
      assert_response :success
    end

    test "should update engine2" do
      patch :update, id: @engine2, engine2: { title: @engine2.title }
      assert_redirected_to engine2_path(assigns(:engine2))
    end

    test "should destroy engine2" do
      assert_difference('Engine2.count', -1) do
        delete :destroy, id: @engine2
      end

      assert_redirected_to engine2s_path
    end
  end
end
