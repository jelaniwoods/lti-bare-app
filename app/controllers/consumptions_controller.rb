class ConsumptionsController < ApplicationController
  before_action consumption, only: %i[show edit update destroy]

  # GET /consumptions
  def index
    @users = User.all
  end

  # GET /consumptions/1
  def show; end

  # GET /consumptions/new
  def new
    @user = User.new
  end

  # GET /consumptions/1/edit
  def edit; end

  # POST /consumptions
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /consumptions/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /consumptions/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: "User was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def @set_consumption
    @consumption = Consumption.find(params[:id])
  end

end