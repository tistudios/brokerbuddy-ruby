require 'test_helper'

class PolicyRenewalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @policy_renewal = policy_renewals(:one)
  end

  test "should get index" do
    get policy_renewals_url
    assert_response :success
  end

  test "should get new" do
    get new_policy_renewal_url
    assert_response :success
  end

  test "should create policy_renewal" do
    assert_difference('PolicyRenewal.count') do
      post policy_renewals_url, params: { policy_renewal: { date_quotes_recieved: @policy_renewal.date_quotes_recieved, insurer_id: @policy_renewal.insurer_id, loss_runs_required_id: @policy_renewal.loss_runs_required_id, policy_number: @policy_renewal.policy_number, renewal_date: @policy_renewal.renewal_date, underwriter_id: @policy_renewal.underwriter_id } }
    end

    assert_redirected_to policy_renewal_url(PolicyRenewal.last)
  end

  test "should show policy_renewal" do
    get policy_renewal_url(@policy_renewal)
    assert_response :success
  end

  test "should get edit" do
    get edit_policy_renewal_url(@policy_renewal)
    assert_response :success
  end

  test "should update policy_renewal" do
    patch policy_renewal_url(@policy_renewal), params: { policy_renewal: { date_quotes_recieved: @policy_renewal.date_quotes_recieved, insurer_id: @policy_renewal.insurer_id, loss_runs_required_id: @policy_renewal.loss_runs_required_id, policy_number: @policy_renewal.policy_number, renewal_date: @policy_renewal.renewal_date, underwriter_id: @policy_renewal.underwriter_id } }
    assert_redirected_to policy_renewal_url(@policy_renewal)
  end

  test "should destroy policy_renewal" do
    assert_difference('PolicyRenewal.count', -1) do
      delete policy_renewal_url(@policy_renewal)
    end

    assert_redirected_to policy_renewals_url
  end
end
