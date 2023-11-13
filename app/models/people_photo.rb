# == Schema Information
#
# Table name: people_photos
#
#  id         :integer          not null, primary key
#  photo_id   :integer          not null
#  person_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PeoplePhoto < ApplicationRecord
  belongs_to :photo
  belongs_to :person
end
