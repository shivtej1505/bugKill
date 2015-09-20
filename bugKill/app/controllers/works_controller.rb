class WorksController < ApplicationController
  before_action :set_work, only: [:show, :update, :destroy]

  # GET /works
  # GET /works.json
  def index
    @works = Work.all

    render json: @works
  end

  # GET /works/1
  # GET /works/1.json
  def show
    render json: @work
  end

  # POST /works
  # POST /works.json
  def create
    @work = Work.new(work_params)

    if @work.save
      render json: @work, status: :created, location: @work
    else
      render json: @work.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    @work = Work.find(params[:id])

    if @work.update(work_params)
      head :no_content
    else
      render json: @work.errors, status: :unprocessable_entity
    end
  end

  # DELETE /works/1
  # DELETE /works/1.json
  def destroy
    @work.destroy

    head :no_content
  end

  private

    def set_work
      @work = Work.find(params[:id])
    end

    def work_params
      params.require(:work).permit(:user_id, :project_id, :privilege)
    end
end
