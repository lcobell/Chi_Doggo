# == Schema Information
#
# Table name: walks
#
#  id         :bigint           not null, primary key
#  dog_id     :bigint           not null
#  walker_id  :bigint           not null
#  complete   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class WalkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
