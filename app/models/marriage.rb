# == Schema Information
#
# Table name: marriages
#
#  id            :integer          not null, primary key
#  spouse1_id    :integer
#  spouse2_id    :integer
#  marriage_date :string
#  divorce_date  :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Marriage < ApplicationRecord
  belongs_to :spouse1, class_name: "Person", foreign_key: "spouse1_id"
  belongs_to :spouse2, class_name: "Person", foreign_key: "spouse2_id"
end
