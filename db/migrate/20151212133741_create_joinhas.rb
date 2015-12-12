class CreateJoinhas < ActiveRecord::Migration
  def change
    create_table :joinhas do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.date :upload_date

      t.timestamps null: false
    end
  end
end
