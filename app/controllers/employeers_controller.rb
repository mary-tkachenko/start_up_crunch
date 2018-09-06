class EmployeersController < ApplicationController
  before_action :set_employeer, only: [:show, :edit, :update, :destroy]

  # GET /employeers
  # GET /employeers.json
  def index
    @employeers = Employeer.all
  end

  # GET /employeers/1
  # GET /employeers/1.json
  def show
  end

  # GET /employeers/new
  def new
    @employeer = Employeer.new
  end

  # GET /employeers/1/edit
  def edit
  end

  # POST /employeers
  # POST /employeers.json
  def create
    @employeer = Employeer.new(employeer_params)

    respond_to do |format|
      if @employeer.save
        format.html { redirect_to @employeer, notice: 'Employeer was successfully created.' }
        format.json { render :show, status: :created, location: @employeer }
      else
        format.html { render :new }
        format.json { render json: @employeer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeers/1
  # PATCH/PUT /employeers/1.json
  def update
    respond_to do |format|
      if @employeer.update(employeer_params)
        format.html { redirect_to @employeer, notice: 'Employeer was successfully updated.' }
        format.json { render :show, status: :ok, location: @employeer }
      else
        format.html { render :edit }
        format.json { render json: @employeer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeers/1
  # DELETE /employeers/1.json
  def destroy
    @employeer.destroy
    respond_to do |format|
      format.html { redirect_to employeers_url, notice: 'Employeer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeer
      @employeer = Employeer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employeer_params
      params.require(:employeer).permit(:company_name, :company_name_url)
    end
end
