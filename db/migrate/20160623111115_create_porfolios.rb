class CreatePorfolios < ActiveRecord::Migration
  def change
    create_table :porfolios do |t|
      t.references :seller, index: true, foreign_key: true
      t.references :property, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
