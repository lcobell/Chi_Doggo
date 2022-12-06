class Walk < ApplicationRecord
  belongs_to :dog
  belongs_to :walker

  has_many :messages, class_name: "Message", foreign_key: "walk_id"
end
