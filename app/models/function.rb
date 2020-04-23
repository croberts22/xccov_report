class Function < ApplicationRecord

  def self.make_function(json)

    # JSON format:
    #            {
    #               "coveredLines": 0,
    #               "lineCoverage": 0,
    #               "lineNumber": 25,
    #               "executionCount": 0,
    #               "name": "Charts.AxisRendererBase.init(viewPortHandler: Charts.ViewPortHandler, transformer: Swift.Optional<Charts.Transformer>, axis: Swift.Optional<Charts.AxisBase>) -> Charts.AxisRendererBase",
    #               "executableLines": 6
    #             }

    function = Function.new
    function.covered_lines = json['coveredLines'].to_i
    function.line_coverage = json['lineCoverage'].to_f
    function.line_number = json['lineNumber'].to_i
    function.execution_count = json['executionCount'].to_i
    function.name = json['name']
    function.executable_lines = json['executableLines'].to_i

    function
  end

end
