class AddLinkToDiaryEntries < ActiveRecord::Migration
  def change
    add_column :diary_entries, :link, :string
  end
end
