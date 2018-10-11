class CreateNewbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :newbooks do |t|
      t.string :Title
      t.text :Body

      t.timestamps
    end
  end
end
