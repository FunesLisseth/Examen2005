class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :codUsu
      t.string :nombreUsu
    
      t.timestamps null: false
    end
  end
end
