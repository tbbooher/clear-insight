class MoodysEstimatesController < ApplicationController
  before_action :set_moodys_estimate, only: [:show, :edit, :update, :destroy]

  # GET /moodys_estimates
  # GET /moodys_estimates.json
  def index
    @moodys_estimates = MoodysEstimate.all
  end

  # GET /moodys_estimates/1
  # GET /moodys_estimates/1.json
  def show
  end

  # GET /moodys_estimates/new
  def new
    @moodys_estimate = MoodysEstimate.new
  end

  # GET /moodys_estimates/1/edit
  def edit
  end

  # POST /moodys_estimates
  # POST /moodys_estimates.json
  def create
    @moodys_estimate = MoodysEstimate.new(moodys_estimate_params)

    respond_to do |format|
      if @moodys_estimate.save
        format.html { redirect_to @moodys_estimate, notice: 'Moodys estimate was successfully created.' }
        format.json { render :show, status: :created, location: @moodys_estimate }
      else
        format.html { render :new }
        format.json { render json: @moodys_estimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moodys_estimates/1
  # PATCH/PUT /moodys_estimates/1.json
  def update
    respond_to do |format|
      if @moodys_estimate.update(moodys_estimate_params)
        format.html { redirect_to @moodys_estimate, notice: 'Moodys estimate was successfully updated.' }
        format.json { render :show, status: :ok, location: @moodys_estimate }
      else
        format.html { render :edit }
        format.json { render json: @moodys_estimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moodys_estimates/1
  # DELETE /moodys_estimates/1.json
  def destroy
    @moodys_estimate.destroy
    respond_to do |format|
      format.html { redirect_to moodys_estimates_url, notice: 'Moodys estimate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moodys_estimate
      @moodys_estimate = MoodysEstimate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moodys_estimate_params
      params.require(:moodys_estimate).permit(:year, :impact, :sp_index)
    end
end
