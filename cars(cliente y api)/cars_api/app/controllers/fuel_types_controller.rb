class FuelTypesController < ApplicationController
  before_action :set_fuel_type, only: [:show, :update, :destroy]

  # GET /fuel_types
  def index
    @fuel_types = FuelType.all

    render json: @fuel_types
  end

  # GET /fuel_types/1
  def show
    render json: @fuel_type
  end

  # POST /fuel_types
  def create
    @fuel_type = FuelType.new(fuel_type_params)

    if @fuel_type.save
      render json: @fuel_type, status: :created, location: @fuel_type
    else
      render json: @fuel_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fuel_types/1
  def update
    if @fuel_type.update(fuel_type_params)
      render json: @fuel_type
    else
      render json: @fuel_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fuel_types/1
  def destroy
    @fuel_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuel_type
      @fuel_type = FuelType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fuel_type_params
      params.require(:fuel_type).permit(:name)
    end
end
