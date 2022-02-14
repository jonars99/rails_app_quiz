class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @jobs = Job.all 
    render 'jobs/index'
  end

  def create 
    @job = Job.create(
      url: params[:url],
      employer_name: params[:employer_name],
      employer_description: params[:employer_description],
      job_title: params[:job_title],
      job_description: params[:job_description],
      year_of_experience: params[:year_of_experience],
      education_requirement: params[:education_requirement],
      industry: params[:industry],
      base_salary: params[:base_salary],
      employment_type_id: params[:employment_type_id],
    )
    render 'jobs/update'
  end

  def show 
    @job = Job.find_by(id: params[:id])
    render 'jobs/update'
  end

end
