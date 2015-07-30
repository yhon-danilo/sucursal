class FacturasController < ApplicationController
  before_action :set_factura, only: [:show, :edit, :update, :destroy]
  #before_action :calcular_suma_facturas, only: [:index]
  # GET /facturas
  # GET /facturas.json
  def index
    @sucursal = Sucursal.find(params[:sucursal_id])
    @facturas = @sucursal.facturas.all
  end

  # GET /facturas/1
  # GET /facturas/1.json
  def show
   
  end

  # GET /facturas/new
  def new
    @sucursal = Sucursal.find(params[:sucursal_id])
    @factura = @sucursal.facturas.build
  end

  # GET /facturas/1/edit
  def edit
  end

  #def calcular_suma_facturas
    #@sucursal.s_suma_facturas
   # Sucursal.sumar_facturas
  #end

  # POST /facturas
  # POST /facturas.json
  def create
    @sucursal = Sucursal.find(params[:sucursal_id])
    @factura = @sucursal.facturas.build(factura_params)
    
      if @factura.save
        render 'show'
       
      else
        render 'new'
      end
    
  end

  # PATCH/PUT /facturas/1
  # PATCH/PUT /facturas/1.json
  def update
    if @factura.update(factura_params)
      render 'show'
    end
  end

  # DELETE /facturas/1
  # DELETE /facturas/1.json
  def destroy
    @sucursal = Sucursal.find(params[:sucursal_id])
    @factura = @sucursal.facturas(params[:id])
    @factura.destroy
    redirect_to sucursal_facturas_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factura
      @sucursal = Sucursal.find(params[:sucursal_id])
      @factura = Factura.find(params[:id])      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factura_params
      params.require(:factura).permit(:observacion, :valor_articulo, :sucursal_id)
    end
end
