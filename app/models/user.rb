class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :dogs, class_name: "Dog", foreign_key: "owner_id"

         has_many :walks, class_name: "Walk", foreign_key: "walker_id"

         has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"

         has_many :received_messages, class_name: "Message", foreign_key: "recipient_id"
end
