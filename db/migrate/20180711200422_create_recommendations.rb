class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.references :wine, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
