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
require 'rails_helper'

RSpec.describe Photo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
