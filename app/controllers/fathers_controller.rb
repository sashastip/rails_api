class FathersController < ApplicationController
  before_action :set_father, only: [:show, :edit, :update, :destroy]

  def index
    @fathers = Father.all
  end

  def show
  end

  def new
    @father = Father.new
    @father.sons.build
  end

  def edit
  end

  def create
    @father = Father.new(father_params)

    respond_to do |format|
      if @father.save
        format.html { redirect_to @father, notice: 'Father was successfully created.' }
        format.json { render :show, status: :created, location: @father }
      else
        format.html { render :new }
        format.json { render json: @father.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @father.update(father_params)
        format.html { redirect_to @father, notice: 'Father was successfully updated.' }
        format.json { render :show, status: :ok, location: @father }
      else
        format.html { render :edit }
        format.json { render json: @father.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @father.destroy
    respond_to do |format|
      format.html { redirect_to fathers_url, notice: 'Father was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_father
      @father = Father.find(params[:id])
    end

    def father_params
      params.require(:father).permit(:name, sons_attributes: [:name])
    end
end
