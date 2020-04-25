require "application_system_test_case"

class CoverageFilesTest < ApplicationSystemTestCase
  setup do
    @coverage_file = coverage_files(:one)
  end

  test "visiting the index" do
    visit coverage_files_url
    assert_selector "h1", text: "Coverage Files"
  end

  test "creating a Coverage file" do
    visit coverage_files_url
    click_on "New Coverage File"

    fill_in "Covered lines", with: @coverage_file.covered_lines
    fill_in "Executable lines", with: @coverage_file.executable_lines
    fill_in "Functions", with: @coverage_file.functions
    fill_in "Line coverage", with: @coverage_file.line_coverage
    fill_in "Name", with: @coverage_file.name
    fill_in "Path", with: @coverage_file.path
    click_on "Create Coverage file"

    assert_text "Coverage file was successfully created"
    click_on "Back"
  end

  test "updating a Coverage file" do
    visit coverage_files_url
    click_on "Edit", match: :first

    fill_in "Covered lines", with: @coverage_file.covered_lines
    fill_in "Executable lines", with: @coverage_file.executable_lines
    fill_in "Functions", with: @coverage_file.functions
    fill_in "Line coverage", with: @coverage_file.line_coverage
    fill_in "Name", with: @coverage_file.name
    fill_in "Path", with: @coverage_file.path
    click_on "Update Coverage file"

    assert_text "Coverage file was successfully updated"
    click_on "Back"
  end

  test "destroying a Coverage file" do
    visit coverage_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coverage file was successfully destroyed"
  end
end
