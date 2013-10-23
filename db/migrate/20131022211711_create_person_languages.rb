class CreatePersonLanguages < ActiveRecord::Migration
  def change
    create_table :person_languages, { :id => false } do |t|
      t.integer :person_id
      t.integer :language_id
      t.string :description

      t.timestamps
    end
  end
end
