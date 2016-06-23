class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.string :subtitle
      t.string :description
      t.string :size
      t.string :type
      t.string :address
      t.string :city
      t.string :country
      t.string :operation_type
      t.string :extras
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
