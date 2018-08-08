require "application_system_test_case"

class PedidoAtestadosTest < ApplicationSystemTestCase
  setup do
    @pedido_atestado = pedido_atestados(:one)
  end

  test "visiting the index" do
    visit pedido_atestados_url
    assert_selector "h1", text: "Pedido Atestados"
  end

  test "creating a Pedido atestado" do
    visit pedido_atestados_url
    click_on "New Pedido Atestado"

    click_on "Create Pedido atestado"

    assert_text "Pedido atestado was successfully created"
    click_on "Back"
  end

  test "updating a Pedido atestado" do
    visit pedido_atestados_url
    click_on "Edit", match: :first

    click_on "Update Pedido atestado"

    assert_text "Pedido atestado was successfully updated"
    click_on "Back"
  end

  test "destroying a Pedido atestado" do
    visit pedido_atestados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pedido atestado was successfully destroyed"
  end
end
