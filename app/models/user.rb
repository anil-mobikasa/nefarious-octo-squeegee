class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  belongs_to :role
  #validates_presence_of :username
  before_save :assign_role

  def assign_role
    self.role = Role.find_by name: "patient" if self.role.nil?
  end

  def super_admin?
    self.role.name == "super_admin"
  end

  def admin?
    self.role.name == "admin"
  end

  def dietitian?
    self.role.name == "dietitian"
  end

  def patient?
    self.role.name == "patient"
  end
end
