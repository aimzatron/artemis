class StatusOptionsController < ApplicationController
  before_action :set_status_option, only: [:show, :edit, :update, :destroy]

  # GET /status_options
  # GET /status_options.json
  def index
    @status_options = StatusOption.all
  end

  # GET /status_options/1
  # GET /status_options/1.json
  def show
  end

  # GET /status_options/new
  def new
    @status_option = StatusOption.new
  end

  # GET /status_options/1/edit
  def edit
  end

  # POST /status_options
  # POST /status_options.json
  def create
    @status_option = StatusOption.new(status_option_params)

    respond_to do |format|
      if @status_option.save
        format.html { redirect_to @status_option, notice: 'Status option was successfully created.' }
        format.json { render :show, status: :created, location: @status_option }
      else
        format.html { render :new }
        format.json { render json: @status_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_options/1
  # PATCH/PUT /status_options/1.json
  def update
    respond_to do |format|
      if @status_option.update(status_option_params)
        format.html { redirect_to @status_option, notice: 'Status option was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_option }
      else
        format.html { render :edit }
        format.json { render json: @status_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_options/1
  # DELETE /status_options/1.json
  def destroy
    @status_option.destroy
    respond_to do |format|
      format.html { redirect_to status_options_url, notice: 'Status option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_option
      @status_option = StatusOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_option_params
      params.require(:status_option).permit(:name, :status_category_id)
    end
end
