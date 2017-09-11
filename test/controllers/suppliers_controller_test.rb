require 'test_helper'

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_url
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post suppliers_url, params: { supplier: { address_id: @supplier.address_id, category_id: @supplier.category_id, ci: @supplier.ci, cnpj: @supplier.cnpj, dateFoundation: @supplier.dateFoundation, ie: @supplier.ie, name: @supplier.name, status: @supplier.status } }
    end

    assert_redirected_to supplier_url(Supplier.last)
  end

  test "should show supplier" do
    get supplier_url(@supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_url(@supplier)
    assert_response :success
  end

  test "should update supplier" do
    patch supplier_url(@supplier), params: { supplier: { address_id: @supplier.address_id, category_id: @supplier.category_id, ci: @supplier.ci, cnpj: @supplier.cnpj, dateFoundation: @supplier.dateFoundation, ie: @supplier.ie, name: @supplier.name, status: @supplier.status } }
    assert_redirected_to supplier_url(@supplier)
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete supplier_url(@supplier)
    end

    assert_redirected_to suppliers_url
  end
end
