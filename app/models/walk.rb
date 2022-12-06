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
class Walk < ApplicationRecord
  belongs_to :dog, counter_cache: true
  belongs_to :walker, counter_cache: true

  has_many :messages, class_name: "Message", foreign_key: "walk_id"
end
