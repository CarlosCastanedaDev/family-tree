# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  photo_id   :integer
#  body       :text
#  author_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
    belongs_to :author, required: true, class_name: "Person", foreign_key: "author_id", optional: true
    belongs_to :photo, required: true, class_name: "Photo", foreign_key: "photo_id", optional: true
end
