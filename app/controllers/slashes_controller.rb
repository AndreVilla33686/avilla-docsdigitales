class SlashesController < ApplicationController
  before_action :set_slash, only: [:show, :edit, :update, :destroy]

  # GET /slashes
  # GET /slashes.json
  def index
    @slashes = Slash.all
  end

  # GET /slashes/1
  # GET /slashes/1.json
  def show
  end

  # GET /slashes/new
  def new
    @slash = Slash.new
  end

  # GET /slashes/1/edit
  def edit
  end

  # POST /slashes
  # POST /slashes.json
  def create
    @slash = Slash.new(slash_params)

    respond_to do |format|
      if @slash.save
        format.html { redirect_to @slash, notice: 'Slash was successfully created.' }
        format.json { render :show, status: :created, location: @slash }
      else
        format.html { render :new }
        format.json { render json: @slash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slashes/1
  # PATCH/PUT /slashes/1.json
  def update
    respond_to do |format|
      if @slash.update(slash_params)
        format.html { redirect_to @slash, notice: 'Slash was successfully updated.' }
        format.json { render :show, status: :ok, location: @slash }
      else
        format.html { render :edit }
        format.json { render json: @slash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slashes/1
  # DELETE /slashes/1.json
  def destroy
    @slash.destroy
    respond_to do |format|
      format.html { redirect_to slashes_url, notice: 'Slash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slash
      @slash = Slash.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def slash_params
      params.require(:slash).permit(:name, :address)
    end
end
