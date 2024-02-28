class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.integer :open
      t.integer :close
      t.string :author
      t.string :status 
      
    end
  end
end
