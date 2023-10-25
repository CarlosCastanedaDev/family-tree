class Person < ApplicationRecord
  has_many :parent_relationships, class_name: "Filial", foreign_key: :child_id, dependent: :destroy
  has_many :parents, through: :parent_relationships, source: :parent

  has_many :child_relationships, class_name: "Filial", foreign_key: :parent_id, dependent: :destroy
  has_many :children, through: :child_relationships, source: :child

  has_many :marriages1, class_name: "Marriage", foreign_key: "spouse1_id"
  has_many :spouses1, through: :marriages1, source: :spouse2
  has_many :marriages2, class_name: "Marriage", foreign_key: "spouse2_id"
  has_many :spouses2, through: :marriages2, source: :spouse1
end
