class ApplicantController < ApplicationController
before_action :authenticate_user!




  def create

    @jobpost.applicants.where(user_id: current_user.id).first_or_create
    respond_to do |format|

      format.html { redirect_to @jobpost }
      format.js
   end
  end

  def destroy
    @jobpost.applicants.where(user_id: current_user.id).destroy_all
    respond_to do |format|
      format.html { redirect_to @jobpost }
      format.js
    end
  end



  private

    def set_jobpost

      @jobpost = Jobpost.find(params[:id])
    end
end

