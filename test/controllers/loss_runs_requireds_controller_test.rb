require 'test_helper'

class LossRunsRequiredsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loss_runs_required = loss_runs_requireds(:one)
  end

  test "should get index" do
    get loss_runs_requireds_url
    assert_response :success
  end

  test "should get new" do
    get new_loss_runs_required_url
    assert_response :success
  end

  test "should create loss_runs_required" do
    assert_difference('LossRunsRequired.count') do
      post loss_runs_requireds_url, params: { loss_runs_required: { status: @loss_runs_required.status } }
    end

    assert_redirected_to loss_runs_required_url(LossRunsRequired.last)
  end

  test "should show loss_runs_required" do
    get loss_runs_required_url(@loss_runs_required)
    assert_response :success
  end

  test "should get edit" do
    get edit_loss_runs_required_url(@loss_runs_required)
    assert_response :success
  end

  test "should update loss_runs_required" do
    patch loss_runs_required_url(@loss_runs_required), params: { loss_runs_required: { status: @loss_runs_required.status } }
    assert_redirected_to loss_runs_required_url(@loss_runs_required)
  end

  test "should destroy loss_runs_required" do
    assert_difference('LossRunsRequired.count', -1) do
      delete loss_runs_required_url(@loss_runs_required)
    end

    assert_redirected_to loss_runs_requireds_url
  end
end
