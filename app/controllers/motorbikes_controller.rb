class MotorbikesController < ApplicationController
  before_action :set_motorbike, only: [:show, :edit, :update, :destroy]

  # GET /motorbikes
  # GET /motorbikes.json
  def index
    @motorbikes = Motorbike.all
  end

  # GET /motorbikes/1
  # GET /motorbikes/1.json
  def show
  end

  # GET /motorbikes/new
  def new
    @motorbike = Motorbike.new
  end

  # GET /motorbikes/1/edit
  def edit
  end

  # POST /motorbikes
  # POST /motorbikes.json
  def create
    @motorbike = Motorbike.new(motorbike_params)

    respond_to do |format|
      if @motorbike.save
        format.html { redirect_to @motorbike, notice: 'Motorbike was successfully created.' }
        format.json { render :show, status: :created, location: @motorbike }
      else
        format.html { render :new }
        format.json { render json: @motorbike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motorbikes/1
  # PATCH/PUT /motorbikes/1.json
  def update
    respond_to do |format|
      if @motorbike.update(motorbike_params)
        format.html { redirect_to @motorbike, notice: 'Motorbike was successfully updated.' }
        format.json { render :show, status: :ok, location: @motorbike }
      else
        format.html { render :edit }
        format.json { render json: @motorbike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motorbikes/1
  # DELETE /motorbikes/1.json
  def destroy
    @motorbike.destroy
    respond_to do |format|
      format.html { redirect_to motorbikes_url, notice: 'Motorbike was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motorbike
      @motorbike = Motorbike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motorbike_params
      params.require(:motorbike).permit(:make, :model, :year)
    end
end
