class StatusOptionsController < ApplicationController
  before_action :set_status_option, only: [:show, :edit, :update, :destroy]

  def index
    @status_options = StatusOption.all
  end

  def show
  end

  def new
    @status_option = StatusOption.new
  end

  def edit
  end

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

  def destroy
    @status_option.destroy
    respond_to do |format|
      format.html { redirect_to status_options_url, notice: 'Status option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_status_option
      @status_option = StatusOption.find(params[:id])
    end

    def status_option_params
      params.require(:status_option).permit(:name, :status_category_id)
    end
end
