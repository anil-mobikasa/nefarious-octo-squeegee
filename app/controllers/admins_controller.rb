class AdminsController < ApplicationController
  #before_action :validate_admin


  def dashboard
    @users = User.all.page params[:page]	
    authorize! :read, @users
  end


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