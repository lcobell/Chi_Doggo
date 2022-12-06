# == Schema Information
#
# Table name: messages
#
#  id           :bigint           not null, primary key
#  content      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  recipient_id :bigint           not null
#  sender_id    :bigint           not null
#  walk_id      :bigint           not null
#
# Indexes
#
#  index_messages_on_recipient_id  (recipient_id)
#  index_messages_on_sender_id     (sender_id)
#  index_messages_on_walk_id       (walk_id)
#
# Foreign Keys
#
#  fk_rails_...  (recipient_id => users.id)
#  fk_rails_...  (sender_id => users.id)
#  fk_rails_...  (walk_id => walks.id)
#
require "test_helper"

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
