json.extract! coverage_target, :id, :covered_lines, :line_coverage, :coverage_files, :name, :executable_lines, :build_product_path, :created_at, :updated_at
json.url coverage_target_url(coverage_target, format: :json)
