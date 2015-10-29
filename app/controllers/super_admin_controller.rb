class SuperAdminController < ApplicationController
  def dashboard
  	  	@dietitians = User.where(:role_id => 3)
  end
end