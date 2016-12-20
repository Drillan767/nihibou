class StripsController < ApplicationController
  before_action :set_strip, only: [:show, :edit, :update, :destroy]

  # GET /strips
  def index
    @strips = Strip.all
  end

  # GET /strips/1
  def show
  end

  # GET /strips/new
  def new
    @strip = Strip.new
  end

  # GET /strips/1/edit
  def edit
  end

  # POST /strips
  def create
    @strip = Strip.new(strip_params)

    if @strip.save
      redirect_to @strip, notice: 'Strip was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /strips/1
  def update
    if @strip.update(strip_params)
      redirect_to @strip, notice: 'Strip was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /strips/1
  def destroy
    @strip.destroy
    redirect_to strips_url, notice: 'Strip was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strip
      @strip = Strip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def strip_params
      params.require(:strip).permit(:image, :titre, :strip_number, :description)
    end
end
