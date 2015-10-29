class AdminsController < ApplicationController
  #before_action :validate_admin

<<<<<<< HEAD
    def dashboard
      	
    end
=======
  def dashboard
    	
  end
>>>>>>> cff39294498f9f332cb51628d1311e772293d4ec

  def approve_user
      @user = User.find_by_id(params[id])
      @user.toggle!(:approved)
  end

  private

  def validate_admin
    #@admin = User.find_by_id(params[:id]) if defined? params[:id] and !params[:id].blank?
  	#redirect_to projects_path, notice: "Not Authorized for this action" if @admin.blank? or @admin.role != "Admin"
  end
end