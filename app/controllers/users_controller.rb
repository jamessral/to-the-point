# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show; end

  # GET /users/new
  def new
    @create_user_form = CreateUserForm.new
  end

  # GET /users/1/edit
  def edit; end

  # POST /users or /users.json
  def create
    @create_user_form = CreateUserForm.new(create_user_params)

    respond_to do |format|
      if @create_user_form.save
        format.html { redirect_to user_url(@create_user_form.user), notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @create_user_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_user_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy!

    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  def create_user_params
    params.require(:create_user_form).permit(:email, :password, :password_confirmation)
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:email)
  end
end
