# == Schema Information
#
# Table name: dogs
#
#  id                  :bigint           not null, primary key
#  name                :string
#  size                :string
#  about               :text
#  image               :string
#  owner_id            :bigint           not null
#  sunday_morning      :boolean
#  sunday_afternoon    :boolean
#  sunday_night        :boolean
#  monday_morning      :boolean
#  monday_afternoon    :boolean
#  monday_night        :boolean
#  tuesday_morning     :boolean
#  tuesday_afternoon   :boolean
#  tuesday_night       :boolean
#  wednesday_morning   :boolean
#  wednesday_afternoon :boolean
#  wednesday_night     :boolean
#  thursday_morning    :boolean
#  thursday_afternoon  :boolean
#  thursday_night      :boolean
#  friday_morning      :boolean
#  friday_afternoon    :boolean
#  friday_night        :boolean
#  saturday_morning    :boolean
#  saturday_afternoon  :boolean
#  saturday_night      :boolean
#  neighborhood        :string
#  walks_count         :integer          default(0)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Dog < ApplicationRecord
  belongs_to :owner

  has_many :walks, class_name: "Walk", foreign_key: "dog_id"
end
