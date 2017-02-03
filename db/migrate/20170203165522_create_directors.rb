class CreateDirectors < ActiveRecord::Migration[5.0]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :hometown
      t.integer :age

      t.timestamps
    end
  end
end
