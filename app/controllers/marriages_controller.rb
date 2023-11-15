class MarriagesController < ApplicationController
  before_action :set_marriage, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /marriages or /marriages.json
  def index
    @marriages = Marriage.all
  end

  # GET /marriages/1 or /marriages/1.json
  def show
  end

  # GET /marriages/new
  def new
    @marriage = Marriage.new
  end

  # GET /marriages/1/edit
  def edit
  end

  # POST /marriages or /marriages.json
  def create
    @marriage = Marriage.new(marriage_params)

    respond_to do |format|
      if @marriage.save
        format.html { redirect_to marriage_url(@marriage), notice: "Marriage was successfully created." }
        format.json { render :show, status: :created, location: @marriage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @marriage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marriages/1 or /marriages/1.json
  def update
    respond_to do |format|
      if @marriage.update(marriage_params)
        format.html { redirect_to marriage_url(@marriage), notice: "Marriage was successfully updated." }
        format.json { render :show, status: :ok, location: @marriage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marriage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marriages/1 or /marriages/1.json
  def destroy
    @marriage.destroy

    respond_to do |format|
      format.html { redirect_to marriages_url, notice: "Marriage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marriage
      @marriage = Marriage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marriage_params
      params.require(:marriage).permit(:spouse1_id, :spouse2_id, :marriage_date, :divorce_date)
    end
end
