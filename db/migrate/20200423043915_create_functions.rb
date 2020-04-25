class CreateFunctions < ActiveRecord::Migration[6.0]
  def change
    create_table :functions do |t|
      t.string :name
      t.integer :covered_lines
      t.float :line_coverage
      t.integer :line_number
      t.integer :execution_count
      t.integer :executable_lines
      t.references :coverage_file, null: false, foreign_key: true

      t.timestamps
    end
  end
end
