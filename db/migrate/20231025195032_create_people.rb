class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :maiden_name
      t.string :dob
      t.string :dod
      t.string :place_of_birth
      t.string :phone_number
      t.string :address
      t.string :gender

      t.timestamps
    end
  end
end
