class MapusersController < ApplicationController
  before_action :set_mapuser, only: [:show, :edit, :update, :destroy]

  # GET /mapusers
  # GET /mapusers.json
  def index
    @mapusers = Mapuser.all
  end

  # GET /mapusers/1
  # GET /mapusers/1.json
  def show
  end

  # GET /mapusers/new
  def new
    @mapuser = Mapuser.new
  end

  # GET /mapusers/1/edit
  def edit
  end

  # POST /mapusers
  # POST /mapusers.json
  def create
    @mapuser = Mapuser.new(mapuser_params)

    respond_to do |format|
      if @mapuser.save
        format.html { redirect_to @mapuser, notice: 'Mapuser was successfully created.' }
        format.json { render :show, status: :created, location: @mapuser }
      else
        format.html { render :new }
        format.json { render json: @mapuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mapusers/1
  # PATCH/PUT /mapusers/1.json
  def update
    respond_to do |format|
      if @mapuser.update(mapuser_params)
        format.html { redirect_to @mapuser, notice: 'Mapuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @mapuser }
      else
        format.html { render :edit }
        format.json { render json: @mapuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mapusers/1
  # DELETE /mapusers/1.json
  def destroy
    @mapuser.destroy
    respond_to do |format|
      format.html { redirect_to mapusers_url, notice: 'Mapuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mapuser
      @mapuser = Mapuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mapuser_params
      params.require(:mapuser).permit(:title, :description, :address, :latitude, :longitude)
    end
end
