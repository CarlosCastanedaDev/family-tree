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
require 'rails_helper'

RSpec.describe Marriage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
