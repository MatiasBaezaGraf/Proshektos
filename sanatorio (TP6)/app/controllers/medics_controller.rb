class MedicsController < ApplicationController
  before_action :set_medic, only: [:show, :edit, :update, :destroy]

  # GET /medics
  # GET /medics.json
  def index
    @medics = Medic.all
    @medics = @medics.where(:name => params[:name]) unless params[:name].blank?
    @medics = @medics.where(:speciality_id => params[:speciality_id]) unless params[:speciality_id].blank?
  end

  # GET /medics/1
  # GET /medics/1.json
  def show
  end

  # GET /medics/new
  def new
    @medic = Medic.new
    @specialities = Speciality.all
  end

  # GET /medics/1/edit
  def edit
  end

  # POST /medics
  # POST /medics.json
  def create
    @medic = Medic.new(medic_params)
    @specialities = Speciality.all

    respond_to do |format|
      if @medic.save
        format.html { redirect_to @medic, notice: 'Medic was successfully created.' }
        format.json { render :show, status: :created, location: @medic }
      else
        format.html { render :new }
        format.json { render json: @medic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medics/1
  # PATCH/PUT /medics/1.json
  def update
    respond_to do |format|
      if @medic.update(medic_params)
        format.html { redirect_to @medic, notice: 'Medic was successfully updated.' }
        format.json { render :show, status: :ok, location: @medic }
      else
        format.html { render :edit }
        format.json { render json: @medic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medics/1
  # DELETE /medics/1.json
  def destroy
    @medic.destroy
    respond_to do |format|
      format.html { redirect_to medics_url, notice: 'Medic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medic
      @medic = Medic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medic_params
      params.require(:medic).permit(:name, :speciality_id)
    end
end
