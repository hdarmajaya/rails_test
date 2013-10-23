class PersonLanguage < ActiveRecord::Base
  attr_accessible :description, :language_id, :person_id

  set_primary_keys :person_id, :language_id

  belongs_to :person, class_name: "Person", foreign_key: "person_id"
  belongs_to :language, class_name: "Language", foreign_key: "language_id"
end
