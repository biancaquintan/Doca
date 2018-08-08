require 'test_helper'

class PedidoAtestadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido_atestado = pedido_atestados(:one)
  end

  test "should get index" do
    get pedido_atestados_url
    assert_response :success
  end

  test "should get new" do
    get new_pedido_atestado_url
    assert_response :success
  end

  test "should create pedido_atestado" do
    assert_difference('PedidoAtestado.count') do
      post pedido_atestados_url, params: { pedido_atestado: {  } }
    end

    assert_redirected_to pedido_atestado_url(PedidoAtestado.last)
  end

  test "should show pedido_atestado" do
    get pedido_atestado_url(@pedido_atestado)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_atestado_url(@pedido_atestado)
    assert_response :success
  end

  test "should update pedido_atestado" do
    patch pedido_atestado_url(@pedido_atestado), params: { pedido_atestado: {  } }
    assert_redirected_to pedido_atestado_url(@pedido_atestado)
  end

  test "should destroy pedido_atestado" do
    assert_difference('PedidoAtestado.count', -1) do
      delete pedido_atestado_url(@pedido_atestado)
    end

    assert_redirected_to pedido_atestados_url
  end
end
