class Dog < ApplicationRecord
  belongs_to :owner

  has_many :walks, class_name: "Walk", foreign_key: "dog_id"
end
