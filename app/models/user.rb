class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :device_id
  # attr_accessible :title, :body

  has_many :widgets
  has_many :relationships, foreign_key: "user_id", dependent: :destroy
  has_many :widgets, through: :relationships
end
