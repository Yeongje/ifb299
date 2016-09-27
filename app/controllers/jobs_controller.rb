class JobsController < ApplicationController
  def show
    @job = Job.find(params[:id])
  end
  
  private

    def job_params
      params.require(:job).permit(:driver_id, :task)
    end
end
