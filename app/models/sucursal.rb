class Sucursal < ActiveRecord::Base
  has_many :facturas
 
  #def self.total_suma(identificacion="")
  #  @sucursal = self.find(identificacion)
  #  @sucursal.suma_facturas
  #end

  def suma_facturas      
    self.total_ventas_dia = self.facturas.sum(:valor_articulo)
    self.save
  end

  def calcular
    #@sucursales = Sucursal.all    
     @sucursales = Sucursal.all
     @sucursales.sum(:total_ventas_dia)
  end

end
