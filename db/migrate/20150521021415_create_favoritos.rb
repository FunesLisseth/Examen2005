class CreateFavoritos < ActiveRecord::Migration
  def change
    create_table :favoritos do |t|
      t.string :name
      t.string :url
     
      t.references :usuario , index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
