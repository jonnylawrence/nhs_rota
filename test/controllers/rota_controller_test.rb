require 'test_helper'

class RotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rotum = rota(:one)
  end

  test "should get index" do
    get rota_url
    assert_response :success
  end

  test "should get new" do
    get new_rotum_url
    assert_response :success
  end

  test "should create rotum" do
    assert_difference('Rotum.count') do
      post rota_url, params: { rotum: { Date: @rotum.Date, First_on_call_day: @rotum.First_on_call_day, First_on_call_nights: @rotum.First_on_call_nights, Second_on_call: @rotum.Second_on_call } }
    end

    assert_redirected_to rotum_url(Rotum.last)
  end

  test "should show rotum" do
    get rotum_url(@rotum)
    assert_response :success
  end

  test "should get edit" do
    get edit_rotum_url(@rotum)
    assert_response :success
  end

  test "should update rotum" do
    patch rotum_url(@rotum), params: { rotum: { Date: @rotum.Date, First_on_call_day: @rotum.First_on_call_day, First_on_call_nights: @rotum.First_on_call_nights, Second_on_call: @rotum.Second_on_call } }
    assert_redirected_to rotum_url(@rotum)
  end

  test "should destroy rotum" do
    assert_difference('Rotum.count', -1) do
      delete rotum_url(@rotum)
    end

    assert_redirected_to rota_url
  end
end
