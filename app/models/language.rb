class Language < ActiveRecord::Base
  attr_accessible :language_id, :language_name

  set_primary_key :language_id

  validates :language_id, presence: true
  validates :language_name, presence: true, length: { maximum: 25 }

  has_many :person_language, dependent: :destroy

  rails_admin do
    object_label_method :language_name
  end
end
