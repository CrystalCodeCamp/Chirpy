class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string :text

      t.timestamps
    end
  end
end
