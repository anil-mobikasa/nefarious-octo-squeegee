class SuperAdminController < ApplicationController
  #load_and_authorize_resource
  def dashboard
  	@users = User.all
  end
end