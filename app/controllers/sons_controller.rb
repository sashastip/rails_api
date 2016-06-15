class SonsController < ApplicationController
  before_action :set_son, only: [:show, :edit, :update, :destroy]

  # GET /sons
  # GET /sons.json
  def index
    @sons = Son.all
  end

  # GET /sons/1
  # GET /sons/1.json
  def show
  end

  # GET /sons/new
  def new
    @son = Son.new
  end

  # GET /sons/1/edit
  def edit
  end

  # POST /sons
  # POST /sons.json
  def create
    @son = Son.new(son_params)

    respond_to do |format|
      if @son.save
        format.html { redirect_to @son, notice: 'Son was successfully created.' }
        format.json { render :show, status: :created, location: @son }
      else
        format.html { render :new }
        format.json { render json: @son.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sons/1
  # PATCH/PUT /sons/1.json
  def update
    respond_to do |format|
      if @son.update(son_params)
        format.html { redirect_to @son, notice: 'Son was successfully updated.' }
        format.json { render :show, status: :ok, location: @son }
      else
        format.html { render :edit }
        format.json { render json: @son.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sons/1
  # DELETE /sons/1.json
  def destroy
    @son.destroy
    respond_to do |format|
      format.html { redirect_to sons_url, notice: 'Son was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_son
      @son = Son.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def son_params
      params.require(:son).permit(:name)
    end
end
