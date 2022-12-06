# == Schema Information
#
# Table name: messages
#
#  id           :bigint           not null, primary key
#  sender_id    :bigint           not null
#  recipient_id :bigint           not null
#  content      :text
#  walk_id      :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
