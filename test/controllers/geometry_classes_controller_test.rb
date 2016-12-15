require 'test_helper'

class GeometryClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geometry_class = geometry_classes(:one)
  end

  test "should get index" do
    get geometry_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_geometry_class_url
    assert_response :success
  end

  test "should create geometry_class" do
    assert_difference('GeometryClass.count') do
      post geometry_classes_url, params: { geometry_class: { bilding: @geometry_class.bilding, floor: @geometry_class.floor, ip: @geometry_class.ip, room: @geometry_class.room, x: @geometry_class.x, y: @geometry_class.y } }
    end

    assert_redirected_to geometry_class_url(GeometryClass.last)
  end

  test "should show geometry_class" do
    get geometry_class_url(@geometry_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_geometry_class_url(@geometry_class)
    assert_response :success
  end

  test "should update geometry_class" do
    patch geometry_class_url(@geometry_class), params: { geometry_class: { bilding: @geometry_class.bilding, floor: @geometry_class.floor, ip: @geometry_class.ip, room: @geometry_class.room, x: @geometry_class.x, y: @geometry_class.y } }
    assert_redirected_to geometry_class_url(@geometry_class)
  end

  test "should destroy geometry_class" do
    assert_difference('GeometryClass.count', -1) do
      delete geometry_class_url(@geometry_class)
    end

    assert_redirected_to geometry_classes_url
  end
end
