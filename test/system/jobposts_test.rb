require "application_system_test_case"

class JobpostsTest < ApplicationSystemTestCase
  setup do
    @jobpost = jobposts(:one)
  end

  test "visiting the index" do
    visit jobposts_url
    assert_selector "h1", text: "Jobposts"
  end

  test "creating a Jobpost" do
    visit jobposts_url
    click_on "New Jobpost"

    fill_in "Company", with: @jobpost.company
    fill_in "Description", with: @jobpost.description
    fill_in "Salary", with: @jobpost.salary
    fill_in "Title", with: @jobpost.title
    fill_in "Url", with: @jobpost.url
    click_on "Create Jobpost"

    assert_text "Jobpost was successfully created"
    click_on "Back"
  end

  test "updating a Jobpost" do
    visit jobposts_url
    click_on "Edit", match: :first

    fill_in "Company", with: @jobpost.company
    fill_in "Description", with: @jobpost.description
    fill_in "Salary", with: @jobpost.salary
    fill_in "Title", with: @jobpost.title
    fill_in "Url", with: @jobpost.url
    click_on "Update Jobpost"

    assert_text "Jobpost was successfully updated"
    click_on "Back"
  end

  test "destroying a Jobpost" do
    visit jobposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jobpost was successfully destroyed"
  end
end
