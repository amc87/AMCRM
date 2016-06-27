class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.references :property, index: true, foreign_key: true
      t.references :seller, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
