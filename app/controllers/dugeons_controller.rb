class dungeonsController < ApplicationController
  before_action :set_dungeon, only: [:show, :edit, :update, :destroy]

  # GET /dungeons
  # GET /dungeons.json
  def index
    @dungeons = dungeon.all
  end

  # GET /dungeons/1
  # GET /dungeons/1.json
  def show
  end

  # GET /dungeons/new
  def new
    @dungeon = dungeon.new
  end

  # GET /dungeons/1/edit
  def edit
  end

  # POST /dungeons
  # POST /dungeons.json
  def create
    @dungeon = dungeon.new(dungeon_params)

    respond_to do |format|
      if @dungeon.save
        format.html { redirect_to @dungeon, notice: 'dungeon was successfully created.' }
        format.json { render :show, status: :created, location: @dungeon }
      else
        format.html { render :new }
        format.json { render json: @dungeon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dungeons/1
  # PATCH/PUT /dungeons/1.json
  def update
    respond_to do |format|
      if @dungeon.update(dungeon_params)
        format.html { redirect_to @dungeon, notice: 'dungeon was successfully updated.' }
        format.json { render :show, status: :ok, location: @dungeon }
      else
        format.html { render :edit }
        format.json { render json: @dungeon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dungeons/1
  # DELETE /dungeons/1.json
  def destroy
    @dungeon.destroy
    respond_to do |format|
      format.html { redirect_to dungeons_url, notice: 'dungeon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dungeon
      @dungeon = dungeon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dungeon_params
      params.require(:dungeon).permit(:monster, :quantity, :difficulty, :special_ability, :loot)
    end
end
