class Language < ActiveRecord::Base
  attr_accessible :language_id, :language_name

  set_primary_key :language_id
  validates_presence_of :language_name

  has_many :person_language, dependent: :destroy

  rails_admin do
    object_label_method :language_name
  end

  #def language_name_enum
  #  ['English', 'Indo']
  #end
end
