class DiaryEntriesController < ApplicationController
  before_action :set_diary_entry, only: [:show, :edit, :update, :destroy]

  def index
    if params[:uuid].present?
      @diary_entries = DiaryEntry.where(uuid: params[:uuid]).to_a
    else
      @diary_entries = DiaryEntry.all
    end
  end

  def show

  end

  def new
    @diary_entry = DiaryEntry.new
  end

  def edit
  end

  def create
    @diary_entry = DiaryEntry.new(diary_entry_params)
    @diary_entry.link = "http://www.mayoclinic.org/healthy-living/nutrition-and-healthy-eating/expert-blog/gratitude/bgp-20119738"

    respond_to do |format|
      if @diary_entry.save
        format.html { redirect_to @diary_entry, notice: 'Diary entry was successfully created.' }
        format.json { render :show, status: :created, location: @diary_entry }
      else
        format.html { render :new }
        format.json { render json: @diary_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @diary_entry.update(diary_entry_params)
        format.html { redirect_to @diary_entry, notice: 'Diary entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @diary_entry }
      else
        format.html { render :edit }
        format.json { render json: @diary_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @diary_entry.destroy
    respond_to do |format|
      format.html { redirect_to diary_entries_url, notice: 'Diary entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_diary_entry
      @diary_entry = DiaryEntry.find(params[:id])
    end

    def diary_entry_params
      params.require(:diary_entry).permit(:entry_text, :uuid, :status_update, :link)
    end
end
