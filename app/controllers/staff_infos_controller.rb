class StaffInfosController < ApplicationController
  before_action :set_staff_info, only: [:show, :edit, :update, :destroy]

  # GET /staff_infos
  # GET /staff_infos.json
  def index
    @staff_infos = StaffInfo.all
  end

  # GET /staff_infos/1
  # GET /staff_infos/1.json
  def show
  end

  # GET /staff_infos/new
  def new
    @staff_info = StaffInfo.new
  end

  # GET /staff_infos/1/edit
  def edit
  end

  # POST /staff_infos
  # POST /staff_infos.json
  def create
    @staff_info = StaffInfo.new(staff_info_params)

    respond_to do |format|
      if @staff_info.save
        format.html { redirect_to @staff_info, notice: 'Staff info was successfully created.' }
        format.json { render :show, status: :created, location: @staff_info }
      else
        format.html { render :new }
        format.json { render json: @staff_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_infos/1
  # PATCH/PUT /staff_infos/1.json
  def update
    respond_to do |format|
      if @staff_info.update(staff_info_params)
        format.html { redirect_to @staff_info, notice: 'Staff info was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff_info }
      else
        format.html { render :edit }
        format.json { render json: @staff_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_infos/1
  # DELETE /staff_infos/1.json
  def destroy
    @staff_info.destroy
    respond_to do |format|
      format.html { redirect_to staff_infos_url, notice: 'Staff info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_info
      @staff_info = StaffInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_info_params
      params.require(:staff_info).permit(:name)
    end
end
