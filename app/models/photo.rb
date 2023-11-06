# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  owner_id   :integer
#  image_url  :string
#  caption    :string
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Photo < ApplicationRecord
    belongs_to :user, optional: true
end
