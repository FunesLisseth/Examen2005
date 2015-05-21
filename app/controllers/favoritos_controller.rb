class FavoritosController < ApplicationController
  before_action :set_favorito, only: [:show, :edit, :update, :destroy]

  # GET /favoritos
  # GET /favoritos.json
  def index
    @favoritos = @usuario.favoritos
  end

  # GET /favoritos/1
  # GET /favoritos/1.json
  def show
     respond_to do |format|
      format.html
  end

  # GET /favoritos/new
  def new
    @favorito = @usuario.favoritos.new
  end

  # GET /favoritos/1/edit
  def edit
  end

  # POST /favoritos
  # POST /favoritos.json
  def create
    @favorito = @usuario.favoritos.new(favorito_params)

    respond_to do |format|
      if @favorito.save
        format.html { redirect_to usuario_favorito_path(@usuario,@favorito), notice: 'Favorito was successfully created.' }
        format.json { render :show, status: :created, location: usuario_favorito_path(@usuario,@favorito) }
      else
        format.html { render :new }
        format.json { render json: @favorito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favoritos/1
  # PATCH/PUT /favoritos/1.json
  def update
    respond_to do |format|
      if @favorito.update(favorito_params)
        format.html { redirect_to @favorito, notice: 'Favorito was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorito }
      else
        format.html { render :edit }
        format.json { render json: @favorito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favoritos/1
  # DELETE /favoritos/1.json
  def destroy
    @favorito.destroy
    respond_to do |format|
      format.html { redirect_to favoritos_url, notice: 'Favorito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorito
      @favorito = Favorito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorito_params
      params.require(:favorito).permit(:name, :url, :references)
    end
end
