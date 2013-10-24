class Person < ActiveRecord::Base
  attr_accessible :person_id, :person_name

  set_primary_key :person_id

  #validates_presence_of(:person_name)
  validates :person_id, presence: true
  validates :person_name, presence: true, length: { maximum: 25 }

  has_many :person_language, dependent: :destroy

  rails_admin do
    object_label_method :person_name
  end
end
