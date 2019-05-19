class SubmissionsController < ApplicationController
  before_action submission, only: %i[show edit update destroy]

  # GET /submissions
  def index
    @users = User.all
  end

  # GET /submissions/1
  def show; end

  # GET /submissions/new
  def new
    @user = User.new
  end

  # GET /submissions/1/edit
  def edit; end

  # POST /submissions
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /submissions/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /submissions/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: "User was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def @set_submission
    @submission = Submission.find(params[:id])
  end

end