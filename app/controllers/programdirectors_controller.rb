class ProgramdirectorsController < ApplicationController
  before_action :set_programdirector, only: %i[ show edit update destroy ]

  # GET /programdirectors or /programdirectors.json
  def index
    @programdirectors = Programdirector.all
  end

  # GET /programdirectors/1 or /programdirectors/1.json
  def show
  end

  # GET /programdirectors/new
  def new
    @programdirector = Programdirector.new
  end

  # GET /programdirectors/1/edit
  def edit
  end

  # POST /programdirectors or /programdirectors.json
  def create
    @programdirector = Programdirector.new(programdirector_params)

    respond_to do |format|
      if @programdirector.save
        format.html { redirect_to @programdirector, notice: "Programdirector was successfully created." }
        format.json { render :show, status: :created, location: @programdirector }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @programdirector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programdirectors/1 or /programdirectors/1.json
  def update
    respond_to do |format|
      if @programdirector.update(programdirector_params)
        format.html { redirect_to @programdirector, notice: "Programdirector was successfully updated." }
        format.json { render :show, status: :ok, location: @programdirector }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @programdirector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programdirectors/1 or /programdirectors/1.json
  def destroy
    @programdirector.destroy
    respond_to do |format|
      format.html { redirect_to programdirectors_url, notice: "Programdirector was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programdirector
      @programdirector = Programdirector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def programdirector_params
      params.fetch(:programdirector, {})
    end
end
