class RecipiesController < ApplicationController
  before_action :set_recipy, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @q = Recipy.all.ransack(params[:q])
    @recipies = @q.result.page params[:page]

    respond_with(@recipies)
  end

  def show
    respond_with(@recipy)
  end

  def new
    @recipy = Recipy.new
    respond_with(@recipy)
  end

  def edit
  end

  def create
    @recipy = Recipy.new(recipy_params)
    @recipy.save
    respond_with(@recipy)
  end

  def update
    @recipy.update(recipy_params)
    respond_with(@recipy)
  end

  def destroy
    @recipy.destroy
    respond_with(@recipy)
  end

  private
    def set_recipy
      @recipy = Recipy.find(params[:id])
    end

    def recipy_params
      params.require(:recipy).permit(:description, :cultural_preferance, :ingredients, :unit_measure, :amount, :dietitian_tips, :user_id)
    end
end
