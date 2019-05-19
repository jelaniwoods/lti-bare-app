class CredentialsController < ApplicationController
  before_action credential, only: %i[show edit update destroy]

  # GET /credentials
  def index
    @users = User.all
  end

  # GET /credentials/1
  def show; end

  # GET /credentials/new
  def new
    @user = User.new
  end

  # GET /credentials/1/edit
  def edit; end

  # POST /credentials
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /credentials/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /credentials/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: "User was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def @set_credential
    @credential = Credential.find(params[:id])
  end

end