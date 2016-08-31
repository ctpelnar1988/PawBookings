class Pet < ActiveRecord::Base
  belongs_to :user
  validates :name, format: { with: /\A[a-z\s-]{3,30}\z/i }
  validates :cat_or_dog, presence: true
  validates_numericality_of :weight, only_integer: true
  validates :vaccinations, presence: true
  validates :spay_or_neutered, format: { with: /\A[a-z\s-]{4,5}\z/i }
  validates :special_instructions, presence: true
end
