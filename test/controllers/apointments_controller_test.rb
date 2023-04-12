require "test_helper"

class ApointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apointment = apointments(:one)
  end

  test "should get index" do
    get apointments_url
    assert_response :success
  end

  test "should get new" do
    get new_apointment_url
    assert_response :success
  end

  test "should create apointment" do
    assert_difference("Apointment.count") do
      post apointments_url, params: { apointment: { email: @apointment.email, end_at: @apointment.end_at, first_name: @apointment.first_name, last_name: @apointment.last_name, start_at: @apointment.start_at, status: @apointment.status } }
    end

    assert_redirected_to apointment_url(Apointment.last)
  end

  test "should show apointment" do
    get apointment_url(@apointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_apointment_url(@apointment)
    assert_response :success
  end

  test "should update apointment" do
    patch apointment_url(@apointment), params: { apointment: { email: @apointment.email, end_at: @apointment.end_at, first_name: @apointment.first_name, last_name: @apointment.last_name, start_at: @apointment.start_at, status: @apointment.status } }
    assert_redirected_to apointment_url(@apointment)
  end

  test "should destroy apointment" do
    assert_difference("Apointment.count", -1) do
      delete apointment_url(@apointment)
    end

    assert_redirected_to apointments_url
  end
end
