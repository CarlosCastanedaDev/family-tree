# == Schema Information
#
# Table name: filials
#
#  id         :integer          not null, primary key
#  child_id   :integer
#  parent_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Filial < ApplicationRecord
  belongs_to :child, class_name: "Person", foreign_key: "child_id"
  belongs_to :parent, class_name: "Person", foreign_key: "parent_id"
end
