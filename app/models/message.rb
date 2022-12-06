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
class Message < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
  belongs_to :walk
end
