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
require "test_helper"

class WalkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
