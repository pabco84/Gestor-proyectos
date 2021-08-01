class ProjectsController < ApplicationController
  def index

    if params[:status].present?
      @projects =Project.where('status = ?', params[:status])
    else
      @projects =Project.all
    end

  end

  def create

    status = params[:status].to_i
    @project = Project.create(name: params[:name], description: params[:description], status: status, dateinit: params[:dateinit], dateend: params[:dateend])

  end
end
