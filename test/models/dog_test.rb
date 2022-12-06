# == Schema Information
#
# Table name: dogs
#
#  id                  :bigint           not null, primary key
#  about               :text
#  friday_afternoon    :boolean          default(FALSE)
#  friday_morning      :boolean          default(FALSE)
#  friday_night        :boolean          default(FALSE)
#  image               :string
#  monday_afternoon    :boolean          default(FALSE)
#  monday_morning      :boolean          default(FALSE)
#  monday_night        :boolean          default(FALSE)
#  name                :string
#  neighborhood        :string
#  saturday_afternoon  :boolean          default(FALSE)
#  saturday_morning    :boolean          default(FALSE)
#  saturday_night      :boolean          default(FALSE)
#  size                :string
#  sunday_afternoon    :boolean          default(FALSE)
#  sunday_morning      :boolean          default(FALSE)
#  sunday_night        :boolean          default(FALSE)
#  thursday_afternoon  :boolean          default(FALSE)
#  thursday_morning    :boolean          default(FALSE)
#  thursday_night      :boolean          default(FALSE)
#  tuesday_afternoon   :boolean          default(FALSE)
#  tuesday_morning     :boolean          default(FALSE)
#  tuesday_night       :boolean          default(FALSE)
#  walks_count         :integer          default(0)
#  wednesday_afternoon :boolean          default(FALSE)
#  wednesday_morning   :boolean          default(FALSE)
#  wednesday_night     :boolean          default(FALSE)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  owner_id            :bigint           not null
#
# Indexes
#
#  index_dogs_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
require "test_helper"

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
