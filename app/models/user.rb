# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  bio                    :text
#  email                  :citext           default(""), not null
#  encrypted_password     :string           default(""), not null
#  friday_afternoon       :boolean          default(FALSE)
#  friday_morning         :boolean          default(FALSE)
#  friday_night           :boolean          default(FALSE)
#  image                  :string
#  monday_afternoon       :boolean          default(FALSE)
#  monday_morning         :boolean          default(FALSE)
#  monday_night           :boolean          default(FALSE)
#  neighborhood           :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  saturday_afternoon     :boolean          default(FALSE)
#  saturday_morning       :boolean          default(FALSE)
#  saturday_night         :boolean          default(FALSE)
#  sunday_afternoon       :boolean          default(FALSE)
#  sunday_morning         :boolean          default(FALSE)
#  sunday_night           :boolean          default(FALSE)
#  thursday_afternoon     :boolean          default(FALSE)
#  thursday_morning       :boolean          default(FALSE)
#  thursday_night         :boolean          default(FALSE)
#  tuesday_afternoon      :boolean          default(FALSE)
#  tuesday_morning        :boolean          default(FALSE)
#  tuesday_night          :boolean          default(FALSE)
#  username               :citext
#  walks_count            :integer          default(0)
#  wednesday_afternoon    :boolean          default(FALSE)
#  wednesday_morning      :boolean          default(FALSE)
#  wednesday_night        :boolean          default(FALSE)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :dogs, class_name: "Dog", foreign_key: :owner_id, dependent: :destroy

         has_many :walks, foreign_key: :walker_id, dependent: :destroy

         has_many :sent_messages, foreign_key: :sender_id, class_name: "Message", dependent: :destroy

         has_many :received_messages, foreign_key: :recipient_id, class_name: "Message", dependent: :destroy

        #  validates :username, presence: true, uniqueness: true

         

         scope :by_walks, -> { order(walks_count: :desc) }
end
