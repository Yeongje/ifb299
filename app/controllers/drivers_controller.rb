class DriversController < ApplicationController
  def new
    @driver = Driver.new
  end
  
  def show
    @driver = Driver.find(params[:id])
    # @package = Package.find(params[:id])
    @job = Job.find(params[:id])   # need to change here
  end
  
  def create
    @driver = Driver.new(driver_params)
    if @driver.save
      log_in @driver
      redirect_to @driver
    else
      render 'new'
    end
  end
  
  private

    def driver_params
      params.require(:driver).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
