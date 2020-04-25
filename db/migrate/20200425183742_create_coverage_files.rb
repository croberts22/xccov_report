class CreateCoverageFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :coverage_files do |t|
      t.integer :covered_lines
      t.float :line_coverage
      t.string :path
      t.array :functions
      t.string :name
      t.int :executable_lines

      t.timestamps
    end
  end
end
