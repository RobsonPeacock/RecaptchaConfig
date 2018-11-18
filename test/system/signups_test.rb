require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase
  setup do
    @signup = signups(:one)
  end

  test "visiting the index" do
    visit signups_url
    assert_selector "h1", text: "Signups"
  end

  test "creating a Signup" do
    visit signups_url
    click_on "New Signup"

    fill_in "Comments", with: @signup.comments
    fill_in "Email", with: @signup.email
    fill_in "Name", with: @signup.name
    fill_in "Password", with: @signup.password
    click_on "Create Signup"

    assert_text "Signup was successfully created"
    click_on "Back"
  end

  test "updating a Signup" do
    visit signups_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @signup.comments
    fill_in "Email", with: @signup.email
    fill_in "Name", with: @signup.name
    fill_in "Password", with: @signup.password
    click_on "Update Signup"

    assert_text "Signup was successfully updated"
    click_on "Back"
  end

  test "destroying a Signup" do
    visit signups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Signup was successfully destroyed"
  end
end
