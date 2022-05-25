class CreatePosters < ActiveRecord::Migration[7.0]
  def change
    create_table :posters do |t|
      t.string :venue
      t.integer :year
      t.text :description

      t.timestamps
    end
  end
end
