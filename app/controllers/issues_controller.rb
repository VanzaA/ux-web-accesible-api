class IssuesController < ApplicationController
  def index
    @issues = Issue.all

    render json: @issues
  end

  def create
    @issue = Issue.new(issue_params)

    if @issue.save
      render json: @issue, status: :created
    else
      render json: {message: "unprocessable entity"}, status: :unprocessable_entity
    end
  end

  private

  def issue_params
    params.require(:issue).permit(:email, :address, :city, :category, :description, :coordinates)
  end
end
