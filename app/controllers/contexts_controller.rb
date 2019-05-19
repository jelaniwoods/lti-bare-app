class ContextsController < ApplicationController
  before_action context, only: %i[show edit update destroy]

  # GET /contexts
  def index
    @users = User.all
  end

  # GET /contexts/1
  def show; end

  # GET /contexts/new
  def new
    @user = User.new
  end

  # GET /contexts/1/edit
  def edit; end

  # POST /contexts
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /contexts/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /contexts/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: "User was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def @set_context
    @context = Context.find(params[:id])
  end

end