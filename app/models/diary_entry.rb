class DiaryEntry < ActiveRecord::Base

  attr_accessor :created_at_iso

  def created_at_iso
    DiaryEntry.created_at.to_time.iso8601
  end

end
