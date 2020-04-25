class Function < ApplicationRecord

  belongs_to :coverage_file

  def self.make_function(coverage_file, json)

    # JSON format:
    # {
    #    "coveredLines": 0,
    #    "lineCoverage": 0,
    #    "lineNumber": 25,
    #    "executionCount": 0,
    #    "name": "...",
    #    "executableLines": 6
    #  }

    function = Function.create() do |f|
      f.covered_lines = json['coveredLines'].to_i
      f.line_coverage = json['lineCoverage'].to_f
      f.line_number = json['lineNumber'].to_i
      f.execution_count = json['executionCount'].to_i
      f.name = json['name']
      f.executable_lines = json['executableLines'].to_i
    end

    function.coverage_file = coverage_file

    function
  end

end
