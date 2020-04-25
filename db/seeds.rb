# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

file = open('db/seed_data/xc_seed.json')
json_string = file.read
json = JSON.parse(json_string)

report = CoverageReport.create do |report|
  report.covered_lines = json['coveredLines'].to_i
  report.line_coverage = json['lineCoverage'].to_f
  report.executable_lines = json['executableLines'].to_i

  targets_json = json['targets']
  targets_json.each do |target_json|
    CoverageTarget.make_target(report, target_json)
  end
end

puts report.coverage_targets
