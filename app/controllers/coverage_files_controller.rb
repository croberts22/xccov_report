class CoverageFilesController < ApplicationController
  before_action :set_coverage_file, only: [:show, :edit, :update, :destroy]

  # GET /coverage_files
  # GET /coverage_files.json
  def index
    @coverage_files = CoverageFile.all
  end

  # GET /coverage_files/1
  # GET /coverage_files/1.json
  def show
  end

  # GET /coverage_files/new
  def new
    @coverage_file = CoverageFile.new
  end

  # GET /coverage_files/1/edit
  def edit
  end

  # POST /coverage_files
  # POST /coverage_files.json
  def create
    @coverage_file = CoverageFile.new(coverage_file_params)

    respond_to do |format|
      if @coverage_file.save
        format.html { redirect_to @coverage_file, notice: 'Coverage file was successfully created.' }
        format.json { render :show, status: :created, location: @coverage_file }
      else
        format.html { render :new }
        format.json { render json: @coverage_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coverage_files/1
  # PATCH/PUT /coverage_files/1.json
  def update
    respond_to do |format|
      if @coverage_file.update(coverage_file_params)
        format.html { redirect_to @coverage_file, notice: 'Coverage file was successfully updated.' }
        format.json { render :show, status: :ok, location: @coverage_file }
      else
        format.html { render :edit }
        format.json { render json: @coverage_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coverage_files/1
  # DELETE /coverage_files/1.json
  def destroy
    @coverage_file.destroy
    respond_to do |format|
      format.html { redirect_to coverage_files_url, notice: 'Coverage file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coverage_file
      @coverage_file = CoverageFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coverage_file_params
      params.require(:coverage_file).permit(:covered_lines, :line_coverage, :path, :name, :executable_lines, :coverage_target_id)
    end
end
