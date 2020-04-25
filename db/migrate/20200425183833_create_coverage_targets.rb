class CreateCoverageTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :coverage_targets do |t|
      t.int :covered_lines
      t.float :line_coverage
      t.array :coverage_files
      t.string :name
      t.int :executable_lines
      t.string :build_product_path

      t.timestamps
    end
  end
end
