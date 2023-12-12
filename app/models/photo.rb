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
    validates_presence_of :image_url, :caption
    
    belongs_to :owner, class_name: "Person", foreign_key: "owner_id"
    has_many :people_photos, dependent: :destroy
    has_many :people, through: :people_photos

    has_many :comments, class_name: "Comment", foreign_key: "photo_id", dependent: :destroy

    mount_uploader :image_url, ImageUrlUploader
end
