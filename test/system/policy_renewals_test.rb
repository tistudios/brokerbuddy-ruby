require "application_system_test_case"

class PolicyRenewalsTest < ApplicationSystemTestCase
  setup do
    @policy_renewal = policy_renewals(:one)
  end

  test "visiting the index" do
    visit policy_renewals_url
    assert_selector "h1", text: "Policy Renewals"
  end

  test "creating a Policy renewal" do
    visit policy_renewals_url
    click_on "New Policy Renewal"

    fill_in "Date quotes recieved", with: @policy_renewal.date_quotes_recieved
    fill_in "Insurer", with: @policy_renewal.insurer_id
    fill_in "Loss runs required", with: @policy_renewal.loss_runs_required_id
    fill_in "Policy number", with: @policy_renewal.policy_number
    fill_in "Renewal date", with: @policy_renewal.renewal_date
    fill_in "Underwriter", with: @policy_renewal.underwriter_id
    click_on "Create Policy renewal"

    assert_text "Policy renewal was successfully created"
    click_on "Back"
  end

  test "updating a Policy renewal" do
    visit policy_renewals_url
    click_on "Edit", match: :first

    fill_in "Date quotes recieved", with: @policy_renewal.date_quotes_recieved
    fill_in "Insurer", with: @policy_renewal.insurer_id
    fill_in "Loss runs required", with: @policy_renewal.loss_runs_required_id
    fill_in "Policy number", with: @policy_renewal.policy_number
    fill_in "Renewal date", with: @policy_renewal.renewal_date
    fill_in "Underwriter", with: @policy_renewal.underwriter_id
    click_on "Update Policy renewal"

    assert_text "Policy renewal was successfully updated"
    click_on "Back"
  end

  test "destroying a Policy renewal" do
    visit policy_renewals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Policy renewal was successfully destroyed"
  end
end
