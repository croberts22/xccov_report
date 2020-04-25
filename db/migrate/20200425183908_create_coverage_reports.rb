class CreateCoverageReports < ActiveRecord::Migration[6.0]
  def change
    create_table :coverage_reports do |t|
      t.int :covered_lines
      t.float :line_coverage
      t.array :coverage_targets
      t.int :executable_lines

      t.timestamps
    end
  end
end
