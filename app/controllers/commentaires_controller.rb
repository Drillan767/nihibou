class CommentairesController < ApplicationController
  before_action :set_commentaire, only: [:show, :edit, :update, :destroy]

  # GET /commentaires
  def index
    @commentaires = Commentaire.all
  end

  # GET /commentaires/1
  def show
  end

  # GET /commentaires/new
  def new
    @commentaire = Commentaire.new
  end

  # GET /commentaires/1/edit
  def edit
  end

  # POST /commentaires
  def create
    @commentaire = Commentaire.new(commentaire_params)

    if @commentaire.save
      redirect_to @commentaire, notice: 'Commentaire was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /commentaires/1
  def update
    if @commentaire.update(commentaire_params)
      redirect_to @commentaire, notice: 'Commentaire was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /commentaires/1
  def destroy
    @commentaire.destroy
    redirect_to commentaires_url, notice: 'Commentaire was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commentaire
      @commentaire = Commentaire.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def commentaire_params
      params.require(:commentaire).permit(:pseudo, :email, :message)
    end
end
