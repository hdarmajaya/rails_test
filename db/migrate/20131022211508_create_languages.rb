class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages, { :id => false } do |t|
      t.integer :language_id
      t.string :language_name

      t.timestamps
    end
  end
end
