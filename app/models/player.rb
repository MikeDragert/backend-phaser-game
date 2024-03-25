class Player < ApplicationRecord
  has_secure_password
  has_many :player_saves
  has_many :player_items
  has_many :player_achievements
  has_many :items, through: :player_items
  
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true


  def calculate_score
    items.sum(&:score)
  end
end
