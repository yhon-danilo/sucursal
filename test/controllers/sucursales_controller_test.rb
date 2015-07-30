require 'test_helper'

class SucursalesControllerTest < ActionController::TestCase
  setup do
    @sucursal = sucursales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sucursales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sucursal" do
    assert_difference('Sucursal.count') do
      post :create, sucursal: { nombre_sucursal: @sucursal.nombre_sucursal, total_ventas_dia: @sucursal.total_ventas_dia }
    end

    assert_redirected_to sucursal_path(assigns(:sucursal))
  end

  test "should show sucursal" do
    get :show, id: @sucursal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sucursal
    assert_response :success
  end

  test "should update sucursal" do
    patch :update, id: @sucursal, sucursal: { nombre_sucursal: @sucursal.nombre_sucursal, total_ventas_dia: @sucursal.total_ventas_dia }
    assert_redirected_to sucursal_path(assigns(:sucursal))
  end

  test "should destroy sucursal" do
    assert_difference('Sucursal.count', -1) do
      delete :destroy, id: @sucursal
    end

    assert_redirected_to sucursales_path
  end
end
