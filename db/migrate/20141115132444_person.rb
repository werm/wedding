class Person < ActiveRecord::Migration
  def change
    create_table :person do |t|
      t.string :name
      t.string :title
      t.text   :description
      t.string :photo

      t.timestamps
    end
  end
end
