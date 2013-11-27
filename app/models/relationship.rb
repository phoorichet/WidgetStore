class Relationship < ActiveRecord::Base
  attr_accessible :user_id, :widget_id

  belongs_to :user, class_name: "User"
  belongs_to :widget, class_name: "Widget"

  validates :user_id, presence: true
  validates :widget_id, presence: true
end
