# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :citext           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  username               :citext
#  sunday_morning         :boolean
#  sunday_afternoon       :boolean
#  sunday_night           :boolean
#  monday_morning         :boolean
#  monday_afternoon       :boolean
#  monday_night           :boolean
#  tuesday_morning        :boolean
#  tuesday_afternoon      :boolean
#  tuesday_night          :boolean
#  wednesday_morning      :boolean
#  wednesday_afternoon    :boolean
#  wednesday_night        :boolean
#  thursday_morning       :boolean
#  thursday_afternoon     :boolean
#  thursday_night         :boolean
#  friday_morning         :boolean
#  friday_afternoon       :boolean
#  friday_night           :boolean
#  saturday_morning       :boolean
#  saturday_afternoon     :boolean
#  saturday_night         :boolean
#  bio                    :text
#  image                  :string
#  neighborhood           :string
#  walks_count            :integer          default(0)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
