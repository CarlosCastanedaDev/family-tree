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
require 'rails_helper'

RSpec.describe PeoplePhoto, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
