require "application_system_test_case"

class CoverageReportsTest < ApplicationSystemTestCase
  setup do
    @coverage_report = coverage_reports(:one)
  end

  test "visiting the index" do
    visit coverage_reports_url
    assert_selector "h1", text: "Coverage Reports"
  end

  test "creating a Coverage report" do
    visit coverage_reports_url
    click_on "New Coverage Report"

    fill_in "Coverage targets", with: @coverage_report.coverage_targets
    fill_in "Covered lines", with: @coverage_report.covered_lines
    fill_in "Executable lines", with: @coverage_report.executable_lines
    fill_in "Line coverage", with: @coverage_report.line_coverage
    click_on "Create Coverage report"

    assert_text "Coverage report was successfully created"
    click_on "Back"
  end

  test "updating a Coverage report" do
    visit coverage_reports_url
    click_on "Edit", match: :first

    fill_in "Coverage targets", with: @coverage_report.coverage_targets
    fill_in "Covered lines", with: @coverage_report.covered_lines
    fill_in "Executable lines", with: @coverage_report.executable_lines
    fill_in "Line coverage", with: @coverage_report.line_coverage
    click_on "Update Coverage report"

    assert_text "Coverage report was successfully updated"
    click_on "Back"
  end

  test "destroying a Coverage report" do
    visit coverage_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coverage report was successfully destroyed"
  end
end
