class ToolConsumersController < ApplicationController
  before_action tool_consumer, only: %i[show edit update destroy]

  # GET /tool_consumers
  def index
    @users = User.all
  end

  # GET /tool_consumers/1
  def show; end

  # GET /tool_consumers/new
  def new
    @user = User.new
  end

  # GET /tool_consumers/1/edit
  def edit; end

  # POST /tool_consumers
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /tool_consumers/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /tool_consumers/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: "User was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def @set_tool_consumer
    @tool_consumer = ToolConsumer.find(params[:id])
  end

end