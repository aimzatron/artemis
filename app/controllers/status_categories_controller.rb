class StatusCategoriesController < ApplicationController
  before_action :set_status_category, only: [:show, :edit, :update, :destroy]

  def index
    @status_categories = StatusCategory.all
  end

  def show
  end

  def new
    @status_category = StatusCategory.new
  end

  def edit
  end

  def create
    @status_category = StatusCategory.new(status_category_params)

    respond_to do |format|
      if @status_category.save
        format.html { redirect_to @status_category, notice: 'Status category was successfully created.' }
        format.json { render :show, status: :created, location: @status_category }
      else
        format.html { render :new }
        format.json { render json: @status_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @status_category.update(status_category_params)
        format.html { redirect_to @status_category, notice: 'Status category was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_category }
      else
        format.html { render :edit }
        format.json { render json: @status_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @status_category.destroy
    respond_to do |format|
      format.html { redirect_to status_categories_url, notice: 'Status category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_status_category
      @status_category = StatusCategory.find(params[:id])
    end

    def status_category_params
      params.require(:status_category).permit(:name)
    end
end
