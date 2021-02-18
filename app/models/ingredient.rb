class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  before_destroy :check_used

  validates :name, presence: true
  validates :name, uniqueness: true

  private

  def check_used
    
  end
end
