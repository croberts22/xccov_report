module CoverageFilesHelper

  def sorted_functions(functions)
    functions.order(line_coverage: :desc, execution_count: :desc, executable_lines: :desc)
  end

end
