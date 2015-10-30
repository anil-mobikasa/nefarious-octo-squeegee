class SuperAdminController < ApplicationController
  #load_and_authorize_resource
  def dashboard
  	@users = User.all.page params[:page]
  	@dietitians = User.where(:role_id => 3)
  end
end