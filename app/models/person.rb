class Person < ActiveRecord::Base
  attr_accessible :person_id, :person_name

  set_primary_key :person_id
  validates_presence_of(:person_name)

  has_many :person_language, dependent: :destroy

  rails_admin do
    object_label_method :person_name
  end
end
