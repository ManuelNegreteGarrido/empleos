class JobapplicationsController < ApplicationController
  before_action :set_jobapplication, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show new]
  before_action :correct_user, only: %i[edit update destroy]

  # GET /jobapplications or /jobapplications.json
  def index
    @jobapplications = Jobapplication.all
  end

  # GET /jobapplications/1 or /jobapplications/1.json
  def show
  end

  # GET /jobapplications/new
  def new
    @jobapplication = Jobapplication.new
  end

  # Resto del código...

  private

  def set_jobapplication
    @jobapplication = Jobapplication.find(params[:id])
  end

  def correct_user
    @jobapplication = current_user.jobapplications.find_by(id: params[:id])
    redirect_to jobapplications_path, notice: "¡No tienes Permiso para Editar!" if @jobapplication.nil?
  end
end