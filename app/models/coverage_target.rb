class CoverageTarget < ApplicationRecord
  belongs_to :coverage_report
  has_many :coverage_files, dependent: :destroy

  def self.make_target(coverage_report, json)
    # JSON format:
    # {
    #    "coveredLines": 0,
    #    "lineCoverage": 1,
    #    "files": [ ... ],
    #    "name": "...",
    #    "executableLines": 79,
    #    "buildProductPath": "..."
    #  }

    coverage_target = CoverageTarget.create do |target|
      target.covered_lines = json['coveredLines'].to_i
      target.line_coverage = json['lineCoverage'].to_f
      target.name = json['name']
      target.executable_lines = json['executableLines'].to_i
      target.build_product_path = json['buildProductPath']

      files = []

      files_json = json['files']
      files_json.each do |file_json|
        files.push(CoverageFile.make_file(target, file_json))
      end

      target.coverage_files = files
      target.coverage_report = coverage_report
    end

    coverage_target
  end
end
