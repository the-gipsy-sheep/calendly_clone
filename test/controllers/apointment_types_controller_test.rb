require "test_helper"

class ApointmentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apointment_type = apointment_types(:one)
  end

  test "should get index" do
    get apointment_types_url
    assert_response :success
  end

  test "should get new" do
    get new_apointment_type_url
    assert_response :success
  end

  test "should create apointment_type" do
    assert_difference("ApointmentType.count") do
      post apointment_types_url, params: { apointment_type: { color: @apointment_type.color, duration: @apointment_type.duration, location: @apointment_type.location, name: @apointment_type.name, payment_required: @apointment_type.payment_required, price: @apointment_type.price, user_id: @apointment_type.user_id } }
    end

    assert_redirected_to apointment_type_url(ApointmentType.last)
  end

  test "should show apointment_type" do
    get apointment_type_url(@apointment_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_apointment_type_url(@apointment_type)
    assert_response :success
  end

  test "should update apointment_type" do
    patch apointment_type_url(@apointment_type), params: { apointment_type: { color: @apointment_type.color, duration: @apointment_type.duration, location: @apointment_type.location, name: @apointment_type.name, payment_required: @apointment_type.payment_required, price: @apointment_type.price, user_id: @apointment_type.user_id } }
    assert_redirected_to apointment_type_url(@apointment_type)
  end

  test "should destroy apointment_type" do
    assert_difference("ApointmentType.count", -1) do
      delete apointment_type_url(@apointment_type)
    end

    assert_redirected_to apointment_types_url
  end
end
