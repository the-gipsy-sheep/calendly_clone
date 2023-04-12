require "application_system_test_case"

class ApointmentTypesTest < ApplicationSystemTestCase
  setup do
    @apointment_type = apointment_types(:one)
  end

  test "visiting the index" do
    visit apointment_types_url
    assert_selector "h1", text: "Apointment types"
  end

  test "should create apointment type" do
    visit apointment_types_url
    click_on "New apointment type"

    fill_in "Color", with: @apointment_type.color
    fill_in "Duration", with: @apointment_type.duration
    fill_in "Location", with: @apointment_type.location
    fill_in "Name", with: @apointment_type.name
    check "Payment required" if @apointment_type.payment_required
    fill_in "Price", with: @apointment_type.price
    fill_in "User", with: @apointment_type.user_id
    click_on "Create Apointment type"

    assert_text "Apointment type was successfully created"
    click_on "Back"
  end

  test "should update Apointment type" do
    visit apointment_type_url(@apointment_type)
    click_on "Edit this apointment type", match: :first

    fill_in "Color", with: @apointment_type.color
    fill_in "Duration", with: @apointment_type.duration
    fill_in "Location", with: @apointment_type.location
    fill_in "Name", with: @apointment_type.name
    check "Payment required" if @apointment_type.payment_required
    fill_in "Price", with: @apointment_type.price
    fill_in "User", with: @apointment_type.user_id
    click_on "Update Apointment type"

    assert_text "Apointment type was successfully updated"
    click_on "Back"
  end

  test "should destroy Apointment type" do
    visit apointment_type_url(@apointment_type)
    click_on "Destroy this apointment type", match: :first

    assert_text "Apointment type was successfully destroyed"
  end
end
