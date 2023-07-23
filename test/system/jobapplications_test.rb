require "application_system_test_case"

class JobapplicationsTest < ApplicationSystemTestCase
  setup do
    @jobapplication = jobapplications(:one)
  end

  test "visiting the index" do
    visit jobapplications_url
    assert_selector "h1", text: "Jobapplications"
  end

  test "should create jobapplication" do
    visit jobapplications_url
    click_on "New jobapplication"

    fill_in "Description", with: @jobapplication.description
    click_on "Create Jobapplication"

    assert_text "Jobapplication was successfully created"
    click_on "Back"
  end

  test "should update Jobapplication" do
    visit jobapplication_url(@jobapplication)
    click_on "Edit this jobapplication", match: :first

    fill_in "Description", with: @jobapplication.description
    click_on "Update Jobapplication"

    assert_text "Jobapplication was successfully updated"
    click_on "Back"
  end

  test "should destroy Jobapplication" do
    visit jobapplication_url(@jobapplication)
    click_on "Destroy this jobapplication", match: :first

    assert_text "Jobapplication was successfully destroyed"
  end
end
