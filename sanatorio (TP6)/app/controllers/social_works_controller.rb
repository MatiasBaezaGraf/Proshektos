class SocialWorksController < ApplicationController
  before_action :set_social_work, only: [:show, :edit, :update, :destroy]

  # GET /social_works
  # GET /social_works.json
  def index
    @social_works = SocialWork.all
  end

  # GET /social_works/1
  # GET /social_works/1.json
  def show
  end

  # GET /social_works/new
  def new
    @social_work = SocialWork.new
  end

  # GET /social_works/1/edit
  def edit
  end

  # POST /social_works
  # POST /social_works.json
  def create
    @social_work = SocialWork.new(social_work_params)

    respond_to do |format|
      if @social_work.save
        format.html { redirect_to @social_work, notice: 'Social work was successfully created.' }
        format.json { render :show, status: :created, location: @social_work }
      else
        format.html { render :new }
        format.json { render json: @social_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_works/1
  # PATCH/PUT /social_works/1.json
  def update
    respond_to do |format|
      if @social_work.update(social_work_params)
        format.html { redirect_to @social_work, notice: 'Social work was successfully updated.' }
        format.json { render :show, status: :ok, location: @social_work }
      else
        format.html { render :edit }
        format.json { render json: @social_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_works/1
  # DELETE /social_works/1.json
  def destroy
    @social_work.destroy
    respond_to do |format|
      format.html { redirect_to social_works_url, notice: 'Social work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_work
      @social_work = SocialWork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_work_params
      params.require(:social_work).permit(:name, :discount)
    end
end
