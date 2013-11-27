class RemoveSourceFromWidgets < ActiveRecord::Migration
  def change
    remove_column :widgets, :source_file_name
    remove_column :widgets, :source_content_type
    remove_column :widgets, :source_file_size
    remove_column :widgets, :source_updated_at
  end

end
