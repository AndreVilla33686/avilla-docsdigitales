require 'test_helper'

class SysControllerTest < ActionDispatch::IntegrationTest
  test "should get iniciosesion" do
    get sys_iniciosesion_url
    assert_response :success
  end

  test "should get admon" do
    get sys_admon_url
    assert_response :success
  end

  test "should get edempleado" do
    get sys_edempleado_url
    assert_response :success
  end

  test "should get edsucursal" do
    get sys_edsucursal_url
    assert_response :success
  end

  test "should get regempleado" do
    get sys_regempleado_url
    assert_response :success
  end

  test "should get registro" do
    get sys_registro_url
    assert_response :success
  end

  test "should get regsucursal" do
    get sys_regsucursal_url
    assert_response :success
  end

end
