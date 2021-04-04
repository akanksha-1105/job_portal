class JobpostsController < ApplicationController
  before_action :set_jobpost, only: %i[ show edit update destroy ]

  # GET /jobposts or /jobposts.json
  def index
    @jobposts = Jobpost.all#.where(user_id: params[:id]).order("created_at DESC")
  end

  # GET /jobposts/1 or /jobposts/1.json
  def show

  end

  # GET /jobposts/new
  def new
    @jobpost = Jobpost.new
  end

  # GET /jobposts/1/edit
  def edit
    @jobpost = Jobpost.find(params[:id])
  end

  # POST /jobposts or /jobposts.json
  def create
    @jobpost = Jobpost.new(jobpost_params)

    respond_to do |format|
      if @jobpost.save
        format.html { redirect_to @jobpost, notice: "Jobpost was successfully created." }
        format.json { render :show, status: :created, location: @jobpost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobposts/1 or /jobposts/1.json
  def update
    respond_to do |format|
      if @jobpost.update(jobpost_params)
        format.html { redirect_to @jobpost, notice: "Jobpost was successfully updated." }
        format.json { render :show, status: :ok, location: @jobpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobposts/1 or /jobposts/1.json
  def destroy
    @jobpost.destroy
    respond_to do |format|
      format.html { redirect_to jobposts_url, notice: "Jobpost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobpost
      @jobpost = Jobpost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobpost_params
      params.require(:jobpost).permit(:title, :company, :description, :salary, :url)
    end
end
