class Restaurant < ApplicationRecord
  #associations
  has_many :reviews, dependent: :destroy

  #validations
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
