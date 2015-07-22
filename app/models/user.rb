class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname, :username, :role

  # before_action :authenticate_user!
  # attr_accessible :title, :body
  
  has_many :creatives
  has_many :campaigns

  accepts_nested_attributes_for :creatives, :allow_destroy => true

end
