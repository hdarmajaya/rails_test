class PersonLanguage < ActiveRecord::Base
  attr_accessible :description, :language_id, :person_id

  set_primary_keys :person_id, :language_id

  validates :language_id, presence: true, :uniqueness => { :scope => :person_id }
  validates :person_id, presence: true
  validates :description, length: { maximum: 25 }

  belongs_to :person, class_name: "Person", foreign_key: "person_id"
  belongs_to :language, class_name: "Language", foreign_key: "language_id"

  def description_enum
    ['Ok', 'Fluent']
  end
end
