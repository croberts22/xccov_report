require 'test_helper'

class CoverageFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coverage_file = coverage_files(:one)
  end

  test "should get index" do
    get coverage_files_url
    assert_response :success
  end

  test "should get new" do
    get new_coverage_file_url
    assert_response :success
  end

  test "should create coverage_file" do
    assert_difference('CoverageFile.count') do
      post coverage_files_url, params: { coverage_file: { coverage_target_id: @coverage_file.coverage_target_id, covered_lines: @coverage_file.covered_lines, executable_lines: @coverage_file.executable_lines, line_coverage: @coverage_file.line_coverage, name: @coverage_file.name, path: @coverage_file.path } }
    end

    assert_redirected_to coverage_file_url(CoverageFile.last)
  end

  test "should show coverage_file" do
    get coverage_file_url(@coverage_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_coverage_file_url(@coverage_file)
    assert_response :success
  end

  test "should update coverage_file" do
    patch coverage_file_url(@coverage_file), params: { coverage_file: { coverage_target_id: @coverage_file.coverage_target_id, covered_lines: @coverage_file.covered_lines, executable_lines: @coverage_file.executable_lines, line_coverage: @coverage_file.line_coverage, name: @coverage_file.name, path: @coverage_file.path } }
    assert_redirected_to coverage_file_url(@coverage_file)
  end

  test "should destroy coverage_file" do
    assert_difference('CoverageFile.count', -1) do
      delete coverage_file_url(@coverage_file)
    end

    assert_redirected_to coverage_files_url
  end
end
