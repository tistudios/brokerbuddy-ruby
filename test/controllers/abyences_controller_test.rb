require 'test_helper'

class AbyencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abyence = abyences(:one)
  end

  test "should get index" do
    get abyences_url
    assert_response :success
  end

  test "should get new" do
    get new_abyence_url
    assert_response :success
  end

  test "should create abyence" do
    assert_difference('Abyence.count') do
      post abyences_url, params: { abyence: { insurer_id: @abyence.insurer_id, policy_client_name: @abyence.policy_client_name, policy_renewal_id: @abyence.policy_renewal_id, remind_date: @abyence.remind_date, reminder_message: @abyence.reminder_message, underwriter_id: @abyence.underwriter_id } }
    end

    assert_redirected_to abyence_url(Abyence.last)
  end

  test "should show abyence" do
    get abyence_url(@abyence)
    assert_response :success
  end

  test "should get edit" do
    get edit_abyence_url(@abyence)
    assert_response :success
  end

  test "should update abyence" do
    patch abyence_url(@abyence), params: { abyence: { insurer_id: @abyence.insurer_id, policy_client_name: @abyence.policy_client_name, policy_renewal_id: @abyence.policy_renewal_id, remind_date: @abyence.remind_date, reminder_message: @abyence.reminder_message, underwriter_id: @abyence.underwriter_id } }
    assert_redirected_to abyence_url(@abyence)
  end

  test "should destroy abyence" do
    assert_difference('Abyence.count', -1) do
      delete abyence_url(@abyence)
    end

    assert_redirected_to abyences_url
  end
end
