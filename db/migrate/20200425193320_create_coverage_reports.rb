class CreateCoverageReports < ActiveRecord::Migration[6.0]
  def change
    create_table :coverage_reports do |t|
      t.integer :covered_lines
      t.float :line_coverage
      t.integer :executable_lines

      t.timestamps
    end
  end
end
