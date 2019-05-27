require "application_system_test_case"

class AbyencesTest < ApplicationSystemTestCase
  setup do
    @abyence = abyences(:one)
  end

  test "visiting the index" do
    visit abyences_url
    assert_selector "h1", text: "Abyences"
  end

  test "creating a Abyence" do
    visit abyences_url
    click_on "New Abyence"

    fill_in "Insurer", with: @abyence.insurer_id
    fill_in "Policy client name", with: @abyence.policy_client_name
    fill_in "Policy renewal", with: @abyence.policy_renewal_id
    fill_in "Remind date", with: @abyence.remind_date
    fill_in "Reminder message", with: @abyence.reminder_message
    fill_in "Underwriter", with: @abyence.underwriter_id
    click_on "Create Abyence"

    assert_text "Abyence was successfully created"
    click_on "Back"
  end

  test "updating a Abyence" do
    visit abyences_url
    click_on "Edit", match: :first

    fill_in "Insurer", with: @abyence.insurer_id
    fill_in "Policy client name", with: @abyence.policy_client_name
    fill_in "Policy renewal", with: @abyence.policy_renewal_id
    fill_in "Remind date", with: @abyence.remind_date
    fill_in "Reminder message", with: @abyence.reminder_message
    fill_in "Underwriter", with: @abyence.underwriter_id
    click_on "Update Abyence"

    assert_text "Abyence was successfully updated"
    click_on "Back"
  end

  test "destroying a Abyence" do
    visit abyences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Abyence was successfully destroyed"
  end
end
