class SucursalesController < ApplicationController
  before_action :set_sucursal, only: [:show, :edit, :update, :destroy]
  #before_action :calcular, only: [:index]
  #before_action :calcular_suma_facturas, only: [:index]
  # GET /sucursales
  # GET /sucursales.json
  def index
    @sucursales = Sucursal.all
    #@sucursales.calcular
  end

  #def calcular
    #@sucursales = Sucursal.all    
   # return @sucursales.sum(:total_ventas_dia)
  #end
  
  #def calcular_suma_facturas
  #  @sucursal.sumar_facturas
  #end

  # GET /sucursales/1
  # GET /sucursales/1.json
  def show
  end

  # GET /sucursales/new
  def new
    @sucursal = Sucursal.new
  end

  # GET /sucursales/1/edit
  def edit
  end

  # POST /sucursales
  # POST /sucursales.json
  def create
    @sucursal = Sucursal.new(sucursal_params)

    respond_to do |format|
      if @sucursal.save
        format.html { redirect_to @sucursal, notice: 'Sucursal was successfully created.' }
        format.json { render :show, status: :created, location: @sucursal }
      else
        format.html { render :new }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sucursales/1
  # PATCH/PUT /sucursales/1.json
  def update
    respond_to do |format|
      if @sucursal.update(sucursal_params)
        format.html { redirect_to @sucursal, notice: 'Sucursal was successfully updated.' }
        format.json { render :show, status: :ok, location: @sucursal }
      else
        format.html { render :edit }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sucursales/1
  # DELETE /sucursales/1.json
  def destroy
    @sucursal.destroy
    respond_to do |format|
      format.html { redirect_to sucursales_url, notice: 'Sucursal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sucursal
      @sucursal = Sucursal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sucursal_params
      params.require(:sucursal).permit(:nombre_sucursal)
    end
end
