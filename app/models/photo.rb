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
    #belongs_to :user, optional: true
    belongs_to :owner, required: true, class_name: "Person", foreign_key: "owner_id"
    has_many :people_photos
    has_many :people, through: :people_photos

    mount_uploader :image_url, ImageUrlUploader
end
