class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string  :name
      t.string  :last_name
      t.string  :nif
      t.string  :email
      t.string  :telephone1
      t.string  :telephone2
      t.string  :idioma

      t.timestamps null: false
    end
  end
end
