# == Schema Information
#
# Table name: people
#
#  id             :integer          not null, primary key
#  first_name     :string
#  last_name      :string
#  middle_name    :string
#  maiden_name    :string
#  dob            :string
#  dod            :string
#  place_of_birth :string
#  phone_number   :string
#  address        :string
#  gender         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  suffix         :string
#  image_url      :string
#
class Person < ApplicationRecord
  has_one :user
  has_many :photos, class_name: "Photo", foreign_key: "owner_id", dependent: :destroy

  has_many :parent_relationships, class_name: "Filial", foreign_key: :child_id, dependent: :destroy
  has_many :parents, through: :parent_relationships, source: :parent

  has_many :child_relationships, class_name: "Filial", foreign_key: :parent_id, dependent: :destroy
  has_many :children, through: :child_relationships, source: :child

  has_many :marriages1, class_name: "Marriage", foreign_key: "spouse1_id"
  has_many :spouses1, through: :marriages1, source: :spouse2
  has_many :marriages2, class_name: "Marriage", foreign_key: "spouse2_id"
  has_many :spouses2, through: :marriages2, source: :spouse1

  has_many :people_photos
  has_many :tagged_photos, through: :people_photos, source: :photo

  has_many :comments, class_name: "Comment", foreign_key: "author_id", dependent: :destroy

  has_many :recipes, class_name: "Recipe", foreign_key: "author_id", dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    ["first_name"]
  end

  def siblings
    siblings_ids = parents.flat_map { |parent| parent.children.where.not(id: self.id).pluck(:id) }
    Person.where(id: siblings_ids)
  end
end
