class Function < ApplicationRecord

  def self.make_function(json)
    # JSON format:
    # {
    #    "coveredLines": 0,
    #    "lineCoverage": 0,
    #    "lineNumber": 25,
    #    "executionCount": 0,
    #    "name": "Charts.AxisRendererBase.init(viewPortHandler: Charts.ViewPortHandler, transformer: Swift.Optional<Charts.Transformer>, axis: Swift.Optional<Charts.AxisBase>) -> Charts.AxisRendererBase",
    #    "executableLines": 6
    #  }

    function = Function.create do |f|
      f.covered_lines = json['coveredLines'].to_i
      f.line_coverage = json['lineCoverage'].to_f
      f.line_number = json['lineNumber'].to_i
      f.execution_count = json['executionCount'].to_i
      f.name = json['name']
      f.executable_lines = json['executableLines'].to_i
    end

    function
  end

end
