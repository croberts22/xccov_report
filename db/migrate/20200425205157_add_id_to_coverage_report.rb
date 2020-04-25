class AddIdToCoverageReport < ActiveRecord::Migration[6.0]
  def change
    add_column :coverage_reports, :id, :primary_key
  end
end
