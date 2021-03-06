class StatusesController < ApplicationController

  def index
    @statuses = Status.all
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to @status, notice: "Status was successfully created."
    else
      sign_up_error = "Status cannot be blank/User name connot be blank/
        number of likes cannot be blank"
      render :new
    end
  end

  def new
    @status = Status.new
  end

  def show
    @status = Status.find(params[:id])
  end

  def destroy
    @status = Status.find(params[:id])
    @status.destroy
    redirect_to statuses_path, notice: "Status was successfully destroyed."
  end

  def edit
    @status = Status.find(params[:id])
  end

  def update
    @status = Status.find(params[:id])
    if @status.update(status_params)
      redirect_to @status, notice: "Status was successfully updated."
    end
  end



  private

  def status_params
    params.require(:status).permit(
    :status,
    :user,
    :number_of_likes
    )
  end
end
