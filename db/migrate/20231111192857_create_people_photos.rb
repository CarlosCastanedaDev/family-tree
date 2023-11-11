class CreatePeoplePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :people_photos do |t|
      t.references :photo, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
