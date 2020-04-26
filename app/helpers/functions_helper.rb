module FunctionsHelper

  def row_class(function)
    if function.line_coverage > 0.75
      "bg-success"
    else
      function.line_coverage > 0.50 ? "bg-warning" : "bg-danger"
    end
  end

  def number_to_code_coverage_percentage(number)
    number_to_percentage(number * 100, precision: 2)
  end

end
