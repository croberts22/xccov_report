require "application_system_test_case"

class CoverageTargetsTest < ApplicationSystemTestCase
  setup do
    @coverage_target = coverage_targets(:one)
  end

  test "visiting the index" do
    visit coverage_targets_url
    assert_selector "h1", text: "Coverage Targets"
  end

  test "creating a Coverage target" do
    visit coverage_targets_url
    click_on "New Coverage Target"

    fill_in "Build product path", with: @coverage_target.build_product_path
    fill_in "Coverage files", with: @coverage_target.coverage_files
    fill_in "Covered lines", with: @coverage_target.covered_lines
    fill_in "Executable lines", with: @coverage_target.executable_lines
    fill_in "Line coverage", with: @coverage_target.line_coverage
    fill_in "Name", with: @coverage_target.name
    click_on "Create Coverage target"

    assert_text "Coverage target was successfully created"
    click_on "Back"
  end

  test "updating a Coverage target" do
    visit coverage_targets_url
    click_on "Edit", match: :first

    fill_in "Build product path", with: @coverage_target.build_product_path
    fill_in "Coverage files", with: @coverage_target.coverage_files
    fill_in "Covered lines", with: @coverage_target.covered_lines
    fill_in "Executable lines", with: @coverage_target.executable_lines
    fill_in "Line coverage", with: @coverage_target.line_coverage
    fill_in "Name", with: @coverage_target.name
    click_on "Update Coverage target"

    assert_text "Coverage target was successfully updated"
    click_on "Back"
  end

  test "destroying a Coverage target" do
    visit coverage_targets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coverage target was successfully destroyed"
  end
end
