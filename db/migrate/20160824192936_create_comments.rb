class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commentor
      t.text :body
      t.references :picture, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
