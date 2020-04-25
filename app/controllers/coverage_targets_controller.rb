class CoverageTargetsController < ApplicationController
  before_action :set_coverage_target, only: [:show, :edit, :update, :destroy]

  # GET /coverage_targets
  # GET /coverage_targets.json
  def index
    @coverage_targets = CoverageTarget.all
  end

  # GET /coverage_targets/1
  # GET /coverage_targets/1.json
  def show
  end

  # GET /coverage_targets/new
  def new
    @coverage_target = CoverageTarget.new
  end

  # GET /coverage_targets/1/edit
  def edit
  end

  # POST /coverage_targets
  # POST /coverage_targets.json
  def create
    @coverage_target = CoverageTarget.new(coverage_target_params)

    respond_to do |format|
      if @coverage_target.save
        format.html { redirect_to @coverage_target, notice: 'Coverage target was successfully created.' }
        format.json { render :show, status: :created, location: @coverage_target }
      else
        format.html { render :new }
        format.json { render json: @coverage_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coverage_targets/1
  # PATCH/PUT /coverage_targets/1.json
  def update
    respond_to do |format|
      if @coverage_target.update(coverage_target_params)
        format.html { redirect_to @coverage_target, notice: 'Coverage target was successfully updated.' }
        format.json { render :show, status: :ok, location: @coverage_target }
      else
        format.html { render :edit }
        format.json { render json: @coverage_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coverage_targets/1
  # DELETE /coverage_targets/1.json
  def destroy
    @coverage_target.destroy
    respond_to do |format|
      format.html { redirect_to coverage_targets_url, notice: 'Coverage target was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coverage_target
      @coverage_target = CoverageTarget.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coverage_target_params
      params.require(:coverage_target).permit(:covered_lines, :line_coverage, :coverage_files, :name, :executable_lines, :build_product_path)
    end
end
