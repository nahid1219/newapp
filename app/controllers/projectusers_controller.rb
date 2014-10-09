class ProjectusersController < ApplicationController
   before_filter :authenticate_admin!
  before_action :set_projectuser, only: [:show, :edit, :update, :destroy]

  # GET /projectusers
  # GET /projectusers.json
  def index
    @projectusers = Projectuser.order("id").page(params[:page]).per(25)
  end

  # GET /projectusers/1
  # GET /projectusers/1.json
  def show
  end

  # GET /projectusers/new
  def new
    @projectuser = Projectuser.new
    @all_users = User.all
  end

  # GET /projectusers/1/edit
  def edit
  end

  # POST /projectusers
  # POST /projectusers.json
  def create
    @projectuser = Projectuser.new(projectuser_params)

    respond_to do |format|
      if @projectuser.save
        format.html { redirect_to @projectuser, notice: 'Projectuser was successfully created.' }
        format.json { render action: 'show', status: :created, location: @projectuser }
      else
        format.html { render action: 'new' }
        format.json { render json: @projectuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectusers/1
  # PATCH/PUT /projectusers/1.json
  def update
    respond_to do |format|
      if @projectuser.update(projectuser_params)
        format.html { redirect_to @projectuser, notice: 'Projectuser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @projectuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectusers/1
  # DELETE /projectusers/1.json
  def destroy
    @projectuser.destroy
    respond_to do |format|
      format.html { redirect_to projectusers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectuser
      @projectuser = Projectuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectuser_params
      params.require(:projectuser).permit(:project_id, :user_id)
    end
end
