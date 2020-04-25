require 'test_helper'

class CoverageReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coverage_report = coverage_reports(:one)
  end

  test "should get index" do
    get coverage_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_coverage_report_url
    assert_response :success
  end

  test "should create coverage_report" do
    assert_difference('CoverageReport.count') do
      post coverage_reports_url, params: { coverage_report: { coverage_targets: @coverage_report.coverage_targets, covered_lines: @coverage_report.covered_lines, executable_lines: @coverage_report.executable_lines, line_coverage: @coverage_report.line_coverage } }
    end

    assert_redirected_to coverage_report_url(CoverageReport.last)
  end

  test "should show coverage_report" do
    get coverage_report_url(@coverage_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_coverage_report_url(@coverage_report)
    assert_response :success
  end

  test "should update coverage_report" do
    patch coverage_report_url(@coverage_report), params: { coverage_report: { coverage_targets: @coverage_report.coverage_targets, covered_lines: @coverage_report.covered_lines, executable_lines: @coverage_report.executable_lines, line_coverage: @coverage_report.line_coverage } }
    assert_redirected_to coverage_report_url(@coverage_report)
  end

  test "should destroy coverage_report" do
    assert_difference('CoverageReport.count', -1) do
      delete coverage_report_url(@coverage_report)
    end

    assert_redirected_to coverage_reports_url
  end
end
