class PolicyRenewalsController < ApplicationController
  before_action :set_policy_renewal, only: [:show, :edit, :update, :destroy]

  # GET /policy_renewals
  # GET /policy_renewals.json
  def index
    @policy_renewals = PolicyRenewal.all
  end

  # GET /policy_renewals/1
  # GET /policy_renewals/1.json
  def show
  end

  # GET /policy_renewals/new
  def new
    @policy_renewal = PolicyRenewal.new
  end

  # GET /policy_renewals/1/edit
  def edit
  end

  # POST /policy_renewals
  # POST /policy_renewals.json
  def create
    @policy_renewal = PolicyRenewal.new(policy_renewal_params)

    respond_to do |format|
      if @policy_renewal.save
        format.html { redirect_to @policy_renewal, notice: 'Policy renewal was successfully created.' }
        format.json { render :show, status: :created, location: @policy_renewal }
      else
        format.html { render :new }
        format.json { render json: @policy_renewal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policy_renewals/1
  # PATCH/PUT /policy_renewals/1.json
  def update
    respond_to do |format|
      if @policy_renewal.update(policy_renewal_params)
        format.html { redirect_to @policy_renewal, notice: 'Policy renewal was successfully updated.' }
        format.json { render :show, status: :ok, location: @policy_renewal }
      else
        format.html { render :edit }
        format.json { render json: @policy_renewal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policy_renewals/1
  # DELETE /policy_renewals/1.json
  def destroy
    @policy_renewal.destroy
    respond_to do |format|
      format.html { redirect_to policy_renewals_url, notice: 'Policy renewal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy_renewal
      @policy_renewal = PolicyRenewal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_renewal_params
      params.require(:policy_renewal).permit(:policy_number, :date_quotes_recieved, :loss_runs_required_id, :renewal_date, :underwriter_id, :insurer_id)
    end
end
