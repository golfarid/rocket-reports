require 'test_helper'

class GroupReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_report = group_reports(:one)
  end

  test "should get index" do
    get group_reports_url, as: :json
    assert_response :success
  end

  test "should create group_report" do
    assert_difference('GroupReport.count') do
      post group_reports_url, params: { group_report: { parameter_id: @group_report.parameter_id, report_id: @group_report.report_id, role_id: @group_report.role_id } }, as: :json
    end

    assert_response 201
  end

  test "should show group_report" do
    get group_report_url(@group_report), as: :json
    assert_response :success
  end

  test "should update group_report" do
    patch group_report_url(@group_report), params: { group_report: { parameter_id: @group_report.parameter_id, report_id: @group_report.report_id, role_id: @group_report.role_id } }, as: :json
    assert_response 200
  end

  test "should destroy group_report" do
    assert_difference('GroupReport.count', -1) do
      delete group_report_url(@group_report), as: :json
    end

    assert_response 204
  end
end
