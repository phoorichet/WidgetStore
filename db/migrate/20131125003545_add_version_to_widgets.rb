class AddVersionToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :version, :string
  end
end
