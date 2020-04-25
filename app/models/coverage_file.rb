class CoverageFile < ApplicationRecord
  belongs_to :coverage_target
  has_many :functions, dependent: :destroy

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

    functions = []

    coverage_file = CoverageFile.create do |file|
      file.covered_lines = json['coveredLines'].to_i
      file.line_coverage = json['lineCoverage'].to_f
      file.path = json['path']
      file.name = json['name']
      file.executable_lines = json['executableLines'].to_i
      file.functions

      functions_json = json['functions']
      functions_json.each do |function_json|
        functions.push(Function.make_function(file, function_json))
      end
    end

    coverage_file.functions = functions
    coverage_file.coverage_target = coverage_target

    coverage_file
  end
end
