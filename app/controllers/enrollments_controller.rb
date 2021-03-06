class EnrollmentsController < ApplicationController
  before_action enrollment, only: %i[show edit update destroy]

  # GET /enrollments
  def index
    @users = User.all
  end

  # GET /enrollments/1
  def show; end

  # GET /enrollments/new
  def new
    @user = User.new
  end

  # GET /enrollments/1/edit
  def edit; end

  # POST /enrollments
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /enrollments/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /enrollments/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: "User was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def @set_enrollment
    @enrollment = Enrollment.find(params[:id])
  end

end