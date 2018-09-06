require "application_system_test_case"

class EmployeersTest < ApplicationSystemTestCase
  setup do
    @employeer = employeers(:one)
  end

  test "visiting the index" do
    visit employeers_url
    assert_selector "h1", text: "Employeers"
  end

  test "creating a Employeer" do
    visit employeers_url
    click_on "New Employeer"

    fill_in "Company Name", with: @employeer.company_name
    fill_in "Company Name Url", with: @employeer.company_name_url
    click_on "Create Employeer"

    assert_text "Employeer was successfully created"
    click_on "Back"
  end

  test "updating a Employeer" do
    visit employeers_url
    click_on "Edit", match: :first

    fill_in "Company Name", with: @employeer.company_name
    fill_in "Company Name Url", with: @employeer.company_name_url
    click_on "Update Employeer"

    assert_text "Employeer was successfully updated"
    click_on "Back"
  end

  test "destroying a Employeer" do
    visit employeers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employeer was successfully destroyed"
  end
end
