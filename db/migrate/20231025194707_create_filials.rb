class CreateFilials < ActiveRecord::Migration[7.0]
  def change
    create_table :filials do |t|
      t.integer :child_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
