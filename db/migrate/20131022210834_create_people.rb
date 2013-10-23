class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people, { :id => false } do |t|
      t.integer :person_id
      t.string :person_name

      t.timestamps
    end
  end
end
