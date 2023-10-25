class CreateMarriages < ActiveRecord::Migration[7.0]
  def change
    create_table :marriages do |t|
      t.integer :spouse1_id
      t.integer :spouse2_id
      t.string :marriage_date
      t.string :divorce_date

      t.timestamps
    end
  end
end
