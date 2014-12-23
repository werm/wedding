class CreatePeople < ActiveRecord::Migration
  def change
    if !ActiveRecord::Base.connection.table_exists? 'people'
      create_table :people do |t|
        t.string :name
        t.string :title
        t.text :description
        t.string :photo

        t.timestamps
      end
    end
  end
end
