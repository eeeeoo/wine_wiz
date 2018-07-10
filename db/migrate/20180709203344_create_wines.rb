class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :group
      t.string :color
      t.string :body
      t.string :tannin
      t.string :acidity
      t.string :flavors
      t.timestamps
    end
  end
end
