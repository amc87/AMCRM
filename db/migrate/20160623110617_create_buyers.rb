class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :last_name
      t.string :nif
      t.string :email
      t.string :telephone1
      t.string :telephone2
      t.string :idioma
      t.string :adress
      t.string :city
      t.string :country
      t.string :postal_code
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
