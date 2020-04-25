class CoverageFile < ApplicationRecord
  belongs_to :coverage_target

  def self.make_file(coverage_target, json)
    # JSON format:
    # {
    #    "coveredLines": 0,
    #    "lineCoverage": 1,
    #    "path": "...",
    #    "functions": [ ... ],
    #    "name": "...",
    #    "executableLines": 79
    #  }

    coverage_file = CoverageFile.create do |file|
      file.covered_lines = json['coveredLines'].to_i
      file.line_coverage = json['lineCoverage'].to_f
      file.path = json['path']
      file.name = json['name']
      file.executable_lines = json['executableLines'].to_i

      functions_json = json['functions']
      functions_json.each do |function_json|
        Function.make_function(file, function_json)
      end

      file.coverage_target = coverage_target
    end

    coverage_file
  end
end
