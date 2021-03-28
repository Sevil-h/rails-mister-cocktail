class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail_id, uniqueness: true
  validates :ingredient_id, uniqueness: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  belongs_to :cocktail
  belongs_to :ingredient
end
