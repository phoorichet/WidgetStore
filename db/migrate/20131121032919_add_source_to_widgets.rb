class AddSourceToWidgets < ActiveRecord::Migration
  def self.up
    add_attachment :widgets, :source
  end

  def self.down
    remove_attachment :widgets, :source
  end
end
