# for linter
class JobsController < OpenReadController
  before_action :set_job, only: [:show, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = current_user.jobs

    render json: @jobs
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    # BUGGGGGGGGGGGGG!!!!!!!!!!!!!!!!!!!
      # render json: @job
    render json: Job.find(params[:id])
  end

  # POST /jobs
  # POST /jobs.json
  def create
     @job = current_user.jobs.build(job_params)

    if @job.save
      render json: @job, status: :created, location: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    # @job = Job.find(params[:id])

    if @job.update(job_params)
      head :no_content
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy

    head :no_content
  end

  # private

    def set_job
      @job = current_user.jobs.find(params[:id])
    end

    def job_params
      params.require(:job).permit(
        :company_name, :position_name, :company_url, :requirements, :salary,
        :application_url, :notes, :applied, :contact, :user_id)
    end

    private :set_job, :job_params, :current_user

end
