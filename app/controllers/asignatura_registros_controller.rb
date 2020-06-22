class AsignaturaRegistrosController < ApplicationController
  before_action :set_asignatura_registro, only: [:show, :edit, :update, :destroy]

  # GET /asignatura_registros
  # GET /asignatura_registros.json
  def index
    @asignatura_registros = AsignaturaRegistro.all
  end

  # GET /asignatura_registros/1
  # GET /asignatura_registros/1.json
  def show
  end

  # GET /asignatura_registros/new
  def new
    @asignatura_registro = AsignaturaRegistro.new
  end

  # GET /asignatura_registros/1/edit
  def edit
  end

  # POST /asignatura_registros
  # POST /asignatura_registros.json
  def create
    @asignatura_registro = AsignaturaRegistro.new(asignatura_registro_params)

    respond_to do |format|
      if @asignatura_registro.save
        format.html { redirect_to @asignatura_registro, notice: 'Asignatura registro was successfully created.' }
        format.json { render :show, status: :created, location: @asignatura_registro }
      else
        format.html { render :new }
        format.json { render json: @asignatura_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignatura_registros/1
  # PATCH/PUT /asignatura_registros/1.json
  def update
    respond_to do |format|
      if @asignatura_registro.update(asignatura_registro_params)
        format.html { redirect_to @asignatura_registro, notice: 'Asignatura registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @asignatura_registro }
      else
        format.html { render :edit }
        format.json { render json: @asignatura_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignatura_registros/1
  # DELETE /asignatura_registros/1.json
  def destroy
    @asignatura_registro.destroy
    respond_to do |format|
      format.html { redirect_to asignatura_registros_url, notice: 'Asignatura registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignatura_registro
      @asignatura_registro = AsignaturaRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asignatura_registro_params
      params.require(:asignatura_registro).permit(:nombre, :clave, :creditos, :programa_posgrado_registro_id)
    end
end