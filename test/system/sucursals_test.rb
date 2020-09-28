require "application_system_test_case"

class SucursalsTest < ApplicationSystemTestCase
  setup do
    @sucursal = sucursals(:one)
  end

  test "visiting the index" do
    visit sucursals_url
    assert_selector "h1", text: "Sucursals"
  end

  test "creating a Sucursal" do
    visit sucursals_url
    click_on "New Sucursal"

    fill_in "Calle", with: @sucursal.calle
    fill_in "Ciudad", with: @sucursal.ciudad
    fill_in "Colonia", with: @sucursal.colonia
    fill_in "Cpostal", with: @sucursal.cpostal
    fill_in "Empresa", with: @sucursal.empresa
    fill_in "Nomsucursal", with: @sucursal.nomSucursal
    fill_in "Numexterior", with: @sucursal.numExterior
    fill_in "Numinterior", with: @sucursal.numInterior
    fill_in "Pais", with: @sucursal.pais
    click_on "Create Sucursal"

    assert_text "Sucursal was successfully created"
    click_on "Back"
  end

  test "updating a Sucursal" do
    visit sucursals_url
    click_on "Edit", match: :first

    fill_in "Calle", with: @sucursal.calle
    fill_in "Ciudad", with: @sucursal.ciudad
    fill_in "Colonia", with: @sucursal.colonia
    fill_in "Cpostal", with: @sucursal.cpostal
    fill_in "Empresa", with: @sucursal.empresa
    fill_in "Nomsucursal", with: @sucursal.nomSucursal
    fill_in "Numexterior", with: @sucursal.numExterior
    fill_in "Numinterior", with: @sucursal.numInterior
    fill_in "Pais", with: @sucursal.pais
    click_on "Update Sucursal"

    assert_text "Sucursal was successfully updated"
    click_on "Back"
  end

  test "destroying a Sucursal" do
    visit sucursals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sucursal was successfully destroyed"
  end
end
