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
require 'rails_helper'

RSpec.describe Filial, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
