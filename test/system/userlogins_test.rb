require "application_system_test_case"

class UserloginsTest < ApplicationSystemTestCase
  setup do
    @userlogin = userlogins(:one)
  end

  test "visiting the index" do
    visit userlogins_url
    assert_selector "h1", text: "Userlogins"
  end

  test "creating a Userlogin" do
    visit userlogins_url
    click_on "New Userlogin"

    fill_in "Address", with: @userlogin.address
    fill_in "Email", with: @userlogin.email
    fill_in "Mobile", with: @userlogin.mobile
    fill_in "Name", with: @userlogin.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create Userlogin"

    assert_text "Userlogin was successfully created"
    click_on "Back"
  end

  test "updating a Userlogin" do
    visit userlogins_url
    click_on "Edit", match: :first

    fill_in "Address", with: @userlogin.address
    fill_in "Email", with: @userlogin.email
    fill_in "Mobile", with: @userlogin.mobile
    fill_in "Name", with: @userlogin.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update Userlogin"

    assert_text "Userlogin was successfully updated"
    click_on "Back"
  end

  test "destroying a Userlogin" do
    visit userlogins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userlogin was successfully destroyed"
  end
end
