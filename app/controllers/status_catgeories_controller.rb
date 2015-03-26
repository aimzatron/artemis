class StatusCatgeoriesController < ApplicationController
  before_action :set_status_catgeory, only: [:show, :edit, :update, :destroy]

  # GET /status_catgeories
  # GET /status_catgeories.json
  def index
    @status_catgeories = StatusCatgeory.all
  end

  # GET /status_catgeories/1
  # GET /status_catgeories/1.json
  def show
  end

  # GET /status_catgeories/new
  def new
    @status_catgeory = StatusCatgeory.new
  end

  # GET /status_catgeories/1/edit
  def edit
  end

  # POST /status_catgeories
  # POST /status_catgeories.json
  def create
    @status_catgeory = StatusCatgeory.new(status_catgeory_params)

    respond_to do |format|
      if @status_catgeory.save
        format.html { redirect_to @status_catgeory, notice: 'Status catgeory was successfully created.' }
        format.json { render :show, status: :created, location: @status_catgeory }
      else
        format.html { render :new }
        format.json { render json: @status_catgeory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_catgeories/1
  # PATCH/PUT /status_catgeories/1.json
  def update
    respond_to do |format|
      if @status_catgeory.update(status_catgeory_params)
        format.html { redirect_to @status_catgeory, notice: 'Status catgeory was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_catgeory }
      else
        format.html { render :edit }
        format.json { render json: @status_catgeory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_catgeories/1
  # DELETE /status_catgeories/1.json
  def destroy
    @status_catgeory.destroy
    respond_to do |format|
      format.html { redirect_to status_catgeories_url, notice: 'Status catgeory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_catgeory
      @status_catgeory = StatusCatgeory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_catgeory_params
      params.require(:status_catgeory).permit(:name)
    end
end
