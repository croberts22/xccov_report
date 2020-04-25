json.extract! coverage_file, :id, :covered_lines, :line_coverage, :path, :functions, :name, :executable_lines, :created_at, :updated_at
json.url coverage_file_url(coverage_file, format: :json)
