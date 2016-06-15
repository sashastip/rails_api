class SonsController < ApplicationController
  before_action :set_son, only: [:show, :edit, :update, :destroy]

  def index
    @sons = Son.all
  end

  def show
  end

  def new
    @son = Son.new
  end

  def edit
  end

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

  def destroy
    @son.destroy
    respond_to do |format|
      format.html { redirect_to sons_url, notice: 'Son was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_son
      @son = Son.find(params[:id])
    end

    def son_params
      params.require(:son).permit(:name)
    end
end
