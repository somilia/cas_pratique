class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.all
    render json: @users
  end
  # GET /users/:user_id
  def show
    @user = User.find(params[:id])
    render json: @user

  end
  # POST /users
  def create
    @user  = User.create(first_name: params[:first_name], last_name: params[:last_name],
                         email: params[:email], phone: params[:phone])
    render json: @user

  end
  # PATCH/PUT /users/:user_id
  def update
    @user = User.find(params[:id])
    @user.update(first_name: params[:first_name], last_name: params[:last_name],
                 email: params[:email], phone: params[:phone])
    render json: "#{@user.first_name} #{@user.last_name} has been updated !"
  end
  # DELETE /users/:user_id
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: "#{@user.first_name} #{@user.last_name} has been deleted!"
  end
end
