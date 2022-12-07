# == Schema Information
#
# Table name: walks
#
#  id         :bigint           not null, primary key
#  status     :string           default("pending")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  dog_id     :bigint           not null
#  walker_id  :bigint           not null
#
# Indexes
#
#  index_walks_on_dog_id     (dog_id)
#  index_walks_on_walker_id  (walker_id)
#
# Foreign Keys
#
#  fk_rails_...  (dog_id => dogs.id)
#  fk_rails_...  (walker_id => users.id)
#
class Walk < ApplicationRecord
  belongs_to :dog, counter_cache: true
  belongs_to :walker, foreign_key: :user_id, counter_cache: true, optional: :true

  has_many :messages, foreign_key: :walk_id, dependent: :destroy

  scope :past_week, -> { where(created_at: 1.week.ago...) }

  enum status: { pending: "pending", accepted: "accepted", rejected: "rejected", completed: "completed" }
end
