class DugeonsController < ApplicationController
  before_action :set_dugeon, only: [:show, :edit, :update, :destroy]

  # GET /dugeons
  # GET /dugeons.json
  def index
    @dugeons = Dugeon.all
  end

  # GET /dugeons/1
  # GET /dugeons/1.json
  def show
  end

  # GET /dugeons/new
  def new
    @dugeon = Dugeon.new
  end

  # GET /dugeons/1/edit
  def edit
  end

  # POST /dugeons
  # POST /dugeons.json
  def create
    @dugeon = Dugeon.new(dugeon_params)

    respond_to do |format|
      if @dugeon.save
        format.html { redirect_to @dugeon, notice: 'Dugeon was successfully created.' }
        format.json { render :show, status: :created, location: @dugeon }
      else
        format.html { render :new }
        format.json { render json: @dugeon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dugeons/1
  # PATCH/PUT /dugeons/1.json
  def update
    respond_to do |format|
      if @dugeon.update(dugeon_params)
        format.html { redirect_to @dugeon, notice: 'Dugeon was successfully updated.' }
        format.json { render :show, status: :ok, location: @dugeon }
      else
        format.html { render :edit }
        format.json { render json: @dugeon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dugeons/1
  # DELETE /dugeons/1.json
  def destroy
    @dugeon.destroy
    respond_to do |format|
      format.html { redirect_to dugeons_url, notice: 'Dugeon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dugeon
      @dugeon = Dugeon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dugeon_params
      params.require(:dugeon).permit(:monster, :quantity, :difficulty, :special_ability, :loot)
    end
end
