class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @steps = Step.all
    respond_with(@steps)
  end

  def show
    respond_with(@step)
  end

  def new
    @step = Step.new
    respond_with(@step)
  end

  def edit
  end

  def create
    @step = Step.new(step_params)
    @step.save
    respond_with(@step)
  end

  def update
    @step.update(step_params)
    respond_with(@step)
  end

  def destroy
    @step.destroy
    respond_with(@step)
  end

  private
    def set_step
      @step = Step.find(params[:id])
    end

    def step_params
      params.require(:step).permit(:step_number, :instruction)
    end
end
