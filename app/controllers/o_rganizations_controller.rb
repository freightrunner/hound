class ORganizationsController < ApplicationController
  before_action :set_o_rganization, only: [:show, :edit, :update, :destroy]

  # GET /o_rganizations
  # GET /o_rganizations.json
  def index
    @o_rganizations = ORganization.all
  end

  # GET /o_rganizations/1
  # GET /o_rganizations/1.json
  def show
  end

  # GET /o_rganizations/new
  def new
    @o_rganization = ORganization.new
  end

  # GET /o_rganizations/1/edit
  def edit
  end

  # POST /o_rganizations
  # POST /o_rganizations.json
  def create
    @o_rganization = ORganization.new(o_rganization_params)

    respond_to do |format|
      if @o_rganization.save
        format.html { redirect_to @o_rganization, notice: 'O rganization was successfully created.' }
        format.json { render :show, status: :created, location: @o_rganization }
      else
        format.html { render :new }
        format.json { render json: @o_rganization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /o_rganizations/1
  # PATCH/PUT /o_rganizations/1.json
  def update
    respond_to do |format|
      if @o_rganization.update(o_rganization_params)
        format.html { redirect_to @o_rganization, notice: 'O rganization was successfully updated.' }
        format.json { render :show, status: :ok, location: @o_rganization }
      else
        format.html { render :edit }
        format.json { render json: @o_rganization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /o_rganizations/1
  # DELETE /o_rganizations/1.json
  def destroy
    @o_rganization.destroy
    respond_to do |format|
      format.html { redirect_to o_rganizations_url, notice: 'O rganization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_o_rganization
      @o_rganization = ORganization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def o_rganization_params
      params.fetch(:o_rganization, {})
    end
end
