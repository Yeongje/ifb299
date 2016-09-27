class PackagesController < ApplicationController
  def new
    @package = Package.new
  end
  
  def show
    @package = Package.find(params[:id])
  end
  
  def create
    @package = Package.new(package_params)
    if @package.save
      redirect_to @package
    else
      render 'new'
    end
  end
  
  private

    def package_params
      params.require(:package).permit(:name, :email, :phone, :address,
                                      :pickup_time, :package_type, :weight)
    end
end
