require 'test_helper'

class WTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @w_table = w_tables(:one)
  end

  test "should get index" do
    get w_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_w_table_url
    assert_response :success
  end

  test "should create w_table" do
    assert_difference('WTable.count') do
      post w_tables_url, params: { w_table: { front_side: @w_table.front_side, geometry_classes_id: @w_table.geometry_classes_id, x: @w_table.x, y: @w_table.y } }
    end

    assert_redirected_to w_table_url(WTable.last)
  end

  test "should show w_table" do
    get w_table_url(@w_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_w_table_url(@w_table)
    assert_response :success
  end

  test "should update w_table" do
    patch w_table_url(@w_table), params: { w_table: { front_side: @w_table.front_side, geometry_classes_id: @w_table.geometry_classes_id, x: @w_table.x, y: @w_table.y } }
    assert_redirected_to w_table_url(@w_table)
  end

  test "should destroy w_table" do
    assert_difference('WTable.count', -1) do
      delete w_table_url(@w_table)
    end

    assert_redirected_to w_tables_url
  end
end
