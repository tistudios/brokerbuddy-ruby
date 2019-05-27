class LossRunsRequiredsController < ApplicationController
  before_action :set_loss_runs_required, only: [:show, :edit, :update, :destroy]

  # GET /loss_runs_requireds
  # GET /loss_runs_requireds.json
  def index
    @loss_runs_requireds = LossRunsRequired.all
  end

  # GET /loss_runs_requireds/1
  # GET /loss_runs_requireds/1.json
  def show
  end

  # GET /loss_runs_requireds/new
  def new
    @loss_runs_required = LossRunsRequired.new
  end

  # GET /loss_runs_requireds/1/edit
  def edit
  end

  # POST /loss_runs_requireds
  # POST /loss_runs_requireds.json
  def create
    @loss_runs_required = LossRunsRequired.new(loss_runs_required_params)

    respond_to do |format|
      if @loss_runs_required.save
        format.html { redirect_to @loss_runs_required, notice: 'Loss runs required was successfully created.' }
        format.json { render :show, status: :created, location: @loss_runs_required }
      else
        format.html { render :new }
        format.json { render json: @loss_runs_required.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loss_runs_requireds/1
  # PATCH/PUT /loss_runs_requireds/1.json
  def update
    respond_to do |format|
      if @loss_runs_required.update(loss_runs_required_params)
        format.html { redirect_to @loss_runs_required, notice: 'Loss runs required was successfully updated.' }
        format.json { render :show, status: :ok, location: @loss_runs_required }
      else
        format.html { render :edit }
        format.json { render json: @loss_runs_required.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loss_runs_requireds/1
  # DELETE /loss_runs_requireds/1.json
  def destroy
    @loss_runs_required.destroy
    respond_to do |format|
      format.html { redirect_to loss_runs_requireds_url, notice: 'Loss runs required was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loss_runs_required
      @loss_runs_required = LossRunsRequired.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loss_runs_required_params
      params.require(:loss_runs_required).permit(:status)
    end
end
