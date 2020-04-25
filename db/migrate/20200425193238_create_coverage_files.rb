class CreateCoverageFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :coverage_files do |t|
      t.integer :covered_lines
      t.float :line_coverage
      t.string :path
      t.string :name
      t.integer :executable_lines
      t.references :coverage_target, null: false, foreign_key: true

      t.timestamps
    end
  end
end
