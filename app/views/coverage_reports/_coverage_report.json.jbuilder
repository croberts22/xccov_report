json.extract! coverage_report, :id, :covered_lines, :line_coverage, :coverage_targets, :executable_lines, :created_at, :updated_at
json.url coverage_report_url(coverage_report, format: :json)
