class DietplansController < ApplicationController
  before_action :set_dietplan, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @dietplans = Dietplan.all
    respond_with(@dietplans)
  end

  def show
    respond_with(@dietplan)
  end

  def new
    @dietplan = Dietplan.new
    respond_with(@dietplan)
  end

  def edit
  end

  def create
    @dietplan = Dietplan.new(dietplan_params)
    @dietplan.save
    respond_with(@dietplan)
  end

  def update
    @dietplan.update(dietplan_params)
    respond_with(@dietplan)
  end

  def destroy
    @dietplan.destroy
    respond_with(@dietplan)
  end

  private
    def set_dietplan
      @dietplan = Dietplan.find(params[:id])
    end

    def dietplan_params
      params.require(:dietplan).permit(:title, :recipy_id, :step_id, :user_id)
    end
end
