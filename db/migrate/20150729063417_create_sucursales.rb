class CreateSucursales < ActiveRecord::Migration
  def change
    create_table :sucursales do |t|
      t.string :nombre_sucursal
      t.decimal :total_ventas_dia

      t.timestamps null: false
    end
  end
end
