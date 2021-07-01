class UserGear < ApplicationRecord
  belongs_to :user
  belongs_to :gear

  validates :user_id, uniqueness: {scope: :gear_id,
  message: "Don't buy! You already have."}
  # validates :name, uniqueness: { scope: :year,
  #   message: "should happen once per year" }
end
