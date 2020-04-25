json.extract! coverage_target, :id, :covered_lines, :line_coverage, :name, :executable_lines, :build_product_path, :coverage_report_id, :created_at, :updated_at
json.url coverage_target_url(coverage_target, format: :json)
