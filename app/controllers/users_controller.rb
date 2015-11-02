class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_action :check_user_role
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def dashboard
    
  end

  # GET /users
  # GET /users.json
  def index
      @q = User.all.ransack(params[:q])
    @users = @q.result.page params[:page]
    end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by_id(params[:id])
    end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:username, :first_name, :agreement, :middle_name, :last_name, :full_name, :designation,
     :role, :gender, :salutation, :address, :dob, :doj,:role_id, :email, :location, :height, :weight, :health_insurance,
     :uid_number, :password, :password_confirmation)
  end

end
