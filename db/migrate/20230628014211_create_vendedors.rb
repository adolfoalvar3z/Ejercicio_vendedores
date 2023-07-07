class CreateVendedors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendedors do |t|
      t.integer :numero_empleado
      t.string :nombre
      t.string :mail
      t.integer :oficina
      t.string :manager
      t.string :accion

      t.timestamps
    end
  end
end
