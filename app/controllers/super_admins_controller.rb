class SuperAdminsController < ApplicationController
  #load_and_authorize_resource
  def dashboard

  	@q = User.all.ransack(params[:q])
  	@users = @q.result.page params[:page]
  	@dietitians = User.where(:role_id => 3)

  end
end