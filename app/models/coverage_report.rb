class CoverageReport < ApplicationRecord
  has_many :coverage_targets, dependent: :destroy

  def self.make_report(json)
    coverage_report = CoverageReport.create do |report|
      report.covered_lines = json['coveredLines'].to_i
      report.line_coverage = json['lineCoverage'].to_f
      report.executable_lines = json['executableLines'].to_i

      targets_json = json['targets']
      targets_json.each do |target_json|
        CoverageTarget.make_target(report, target_json)
      end
    end

    coverage_report
  end
end
