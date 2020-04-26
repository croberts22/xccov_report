module CoverageReportsHelper

  def sorted_files(files)
    files.order(:name)
  end

end
