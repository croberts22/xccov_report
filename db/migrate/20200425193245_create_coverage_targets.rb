class CreateCoverageTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :coverage_targets do |t|
      t.integer :covered_lines
      t.float :line_coverage
      t.string :name
      t.integer :executable_lines
      t.string :build_product_path
      t.references :coverage_report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
