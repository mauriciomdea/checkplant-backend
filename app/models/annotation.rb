class Annotation < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id, :text, :latitude, :longitude

end
