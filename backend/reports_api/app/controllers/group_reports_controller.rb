class GroupReportsController < ApplicationController
  before_action :set_group_report, only: [:show, :update, :destroy]

  # GET /group_reports
  def index
    @group_reports = GroupReport.all

    render json: @group_reports
  end

  # GET /group_reports/1
  def show
    render json: @group_report
  end

  # POST /group_reports
  def create
    @group_report = GroupReport.new(group_report_params)

    if @group_report.save
      render json: @group_report, status: :created, location: @group_report
    else
      render json: @group_report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_reports/1
  def update
    if @group_report.update(group_report_params)
      render json: @group_report
    else
      render json: @group_report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_reports/1
  def destroy
    @group_report.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_report
      @group_report = GroupReport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_report_params
      params.require(:group_report).permit(:role_id, :report_id, :parameter_id)
    end
end
