class Marriage < ApplicationRecord
  belongs_to :spouse1, class_name: "Person", foreign_key: "spouse1_id"
  belongs_to :spouse2, class_name: "Person", foreign_key: "spouse2_id"
end
