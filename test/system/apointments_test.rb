require "application_system_test_case"

class ApointmentsTest < ApplicationSystemTestCase
  setup do
    @apointment = apointments(:one)
  end

  test "visiting the index" do
    visit apointments_url
    assert_selector "h1", text: "Apointments"
  end

  test "should create apointment" do
    visit apointments_url
    click_on "New apointment"

    fill_in "Email", with: @apointment.email
    fill_in "End at", with: @apointment.end_at
    fill_in "First name", with: @apointment.first_name
    fill_in "Last name", with: @apointment.last_name
    fill_in "Start at", with: @apointment.start_at
    fill_in "Status", with: @apointment.status
    click_on "Create Apointment"

    assert_text "Apointment was successfully created"
    click_on "Back"
  end

  test "should update Apointment" do
    visit apointment_url(@apointment)
    click_on "Edit this apointment", match: :first

    fill_in "Email", with: @apointment.email
    fill_in "End at", with: @apointment.end_at
    fill_in "First name", with: @apointment.first_name
    fill_in "Last name", with: @apointment.last_name
    fill_in "Start at", with: @apointment.start_at
    fill_in "Status", with: @apointment.status
    click_on "Update Apointment"

    assert_text "Apointment was successfully updated"
    click_on "Back"
  end

  test "should destroy Apointment" do
    visit apointment_url(@apointment)
    click_on "Destroy this apointment", match: :first

    assert_text "Apointment was successfully destroyed"
  end
end
