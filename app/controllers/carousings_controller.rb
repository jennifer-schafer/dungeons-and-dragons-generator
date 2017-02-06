class CarousingsController < ApplicationController
  before_action :set_carousing, only: [:show, :edit, :update, :destroy]

  # GET /carousings
  # GET /carousings.json
  def index
    @carousings = Carousing.all
  end

  # GET /carousings/1
  # GET /carousings/1.json
  def show
  end

  # GET /carousings/new
  def new
    @carousing = Carousing.new
  end

  # GET /carousings/1/edit
  def edit
  end

  # POST /carousings
  # POST /carousings.json
  def create
    @carousing = Carousing.new(carousing_params)

    respond_to do |format|
      if @carousing.save
        format.html { redirect_to @carousing, notice: 'Carousing was successfully created.' }
        format.json { render :show, status: :created, location: @carousing }
      else
        format.html { render :new }
        format.json { render json: @carousing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carousings/1
  # PATCH/PUT /carousings/1.json
  def update
    respond_to do |format|
      if @carousing.update(carousing_params)
        format.html { redirect_to @carousing, notice: 'Carousing was successfully updated.' }
        format.json { render :show, status: :ok, location: @carousing }
      else
        format.html { render :edit }
        format.json { render json: @carousing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carousings/1
  # DELETE /carousings/1.json
  def destroy
    @carousing.destroy
    respond_to do |format|
      format.html { redirect_to carousings_url, notice: 'Carousing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carousing
      @carousing = Carousing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carousing_params
      params.require(:carousing).permit(:dice_roll, :result)
    end
end
