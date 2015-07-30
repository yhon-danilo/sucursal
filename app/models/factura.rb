class Factura < ActiveRecord::Base
  after_save :sumar_valor_factura
  belongs_to :sucursal


  def sumar_valor_factura
    self.sucursal.suma_facturas
  end
end
