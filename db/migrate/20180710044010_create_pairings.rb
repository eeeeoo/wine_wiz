class CreatePairings < ActiveRecord::Migration[5.2]
  def change
    create_table :pairings do |t|
      t.references :wine, foreign_key: true
      t.references :category, foreign_key: true
      
      t.timestamps
    end
  end
end
