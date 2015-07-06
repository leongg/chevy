class CarFilesController < ApplicationController
  before_action :set_car_file, only: [:show, :edit, :update, :destroy]

  # GET /car_files
  # GET /car_files.json
  def index
    @car_files = CarFile.all
  end

  # GET /car_files/1
  # GET /car_files/1.json
  def show
  end

  # GET /car_files/new
  def new
    @car_file = CarFile.new
  end

  # GET /car_files/1/edit
  def edit
  end

  # POST /car_files
  # POST /car_files.json
  def create
    @car_file = CarFile.new(car_file_params)

    respond_to do |format|
      if @car_file.save
        format.html { redirect_to @car_file, notice: 'Car file was successfully created.' }
        format.json { render :show, status: :created, location: @car_file }
      else
        format.html { render :new }
        format.json { render json: @car_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_files/1
  # PATCH/PUT /car_files/1.json
  def update
    respond_to do |format|
      if @car_file.update(car_file_params)
        format.html { redirect_to @car_file, notice: 'Car file was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_file }
      else
        format.html { render :edit }
        format.json { render json: @car_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_files/1
  # DELETE /car_files/1.json
  def destroy
    @car_file.destroy
    respond_to do |format|
      format.html { redirect_to car_files_url, notice: 'Car file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_file
      @car_file = CarFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_file_params
      params.require(:car_file).permit(:office_id, :car_id)
    end
end
