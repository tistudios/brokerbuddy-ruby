require "application_system_test_case"

class LossRunsRequiredsTest < ApplicationSystemTestCase
  setup do
    @loss_runs_required = loss_runs_requireds(:one)
  end

  test "visiting the index" do
    visit loss_runs_requireds_url
    assert_selector "h1", text: "Loss Runs Requireds"
  end

  test "creating a Loss runs required" do
    visit loss_runs_requireds_url
    click_on "New Loss Runs Required"

    fill_in "Status", with: @loss_runs_required.status
    click_on "Create Loss runs required"

    assert_text "Loss runs required was successfully created"
    click_on "Back"
  end

  test "updating a Loss runs required" do
    visit loss_runs_requireds_url
    click_on "Edit", match: :first

    fill_in "Status", with: @loss_runs_required.status
    click_on "Update Loss runs required"

    assert_text "Loss runs required was successfully updated"
    click_on "Back"
  end

  test "destroying a Loss runs required" do
    visit loss_runs_requireds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loss runs required was successfully destroyed"
  end
end
