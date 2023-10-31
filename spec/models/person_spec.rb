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
#
require 'rails_helper'

RSpec.describe Person, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
