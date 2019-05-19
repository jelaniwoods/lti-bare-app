class ResourcesController < ApplicationController
  before_action resource, only: %i[show edit update destroy]

  # GET /resources
  def index
    @users = User.all
  end

  # GET /resources/1
  def show; end

  # GET /resources/new
  def new
    @user = User.new
  end

  # GET /resources/1/edit
  def edit; end

  # POST /resources
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /resources/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /resources/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: "User was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def @set_resource
    @resource = Resource.find(params[:id])
  end

end