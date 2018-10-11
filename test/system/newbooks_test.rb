require "application_system_test_case"

class NewbooksTest < ApplicationSystemTestCase
  setup do
    @newbook = newbooks(:one)
  end

  test "visiting the index" do
    visit newbooks_url
    assert_selector "h1", text: "Newbooks"
  end

  test "creating a Newbook" do
    visit newbooks_url
    click_on "New Newbook"

    fill_in "Body", with: @newbook.Body
    fill_in "Title", with: @newbook.Title
    click_on "Create Newbook"

    assert_text "Newbook was successfully created"
    click_on "Back"
  end

  test "updating a Newbook" do
    visit newbooks_url
    click_on "Edit", match: :first

    fill_in "Body", with: @newbook.Body
    fill_in "Title", with: @newbook.Title
    click_on "Update Newbook"

    assert_text "Newbook was successfully updated"
    click_on "Back"
  end

  test "destroying a Newbook" do
    visit newbooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newbook was successfully destroyed"
  end
end
