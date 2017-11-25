class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.text :name
      t.text :author
      t.integer :year
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
