require 'test_helper'

class CoverageTargetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coverage_target = coverage_targets(:one)
  end

  test "should get index" do
    get coverage_targets_url
    assert_response :success
  end

  test "should get new" do
    get new_coverage_target_url
    assert_response :success
  end

  test "should create coverage_target" do
    assert_difference('CoverageTarget.count') do
      post coverage_targets_url, params: { coverage_target: { build_product_path: @coverage_target.build_product_path, coverage_report_id: @coverage_target.coverage_report_id, covered_lines: @coverage_target.covered_lines, executable_lines: @coverage_target.executable_lines, line_coverage: @coverage_target.line_coverage, name: @coverage_target.name } }
    end

    assert_redirected_to coverage_target_url(CoverageTarget.last)
  end

  test "should show coverage_target" do
    get coverage_target_url(@coverage_target)
    assert_response :success
  end

  test "should get edit" do
    get edit_coverage_target_url(@coverage_target)
    assert_response :success
  end

  test "should update coverage_target" do
    patch coverage_target_url(@coverage_target), params: { coverage_target: { build_product_path: @coverage_target.build_product_path, coverage_report_id: @coverage_target.coverage_report_id, covered_lines: @coverage_target.covered_lines, executable_lines: @coverage_target.executable_lines, line_coverage: @coverage_target.line_coverage, name: @coverage_target.name } }
    assert_redirected_to coverage_target_url(@coverage_target)
  end

  test "should destroy coverage_target" do
    assert_difference('CoverageTarget.count', -1) do
      delete coverage_target_url(@coverage_target)
    end

    assert_redirected_to coverage_targets_url
  end
end
