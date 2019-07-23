class Quote < ApplicationRecord
  validates_inclusion_of :order, in: 1..6
  validates :order, numericality: { only_integer: true }, presence: true, uniqueness: true
  validates :author_name, length: { in: 3..20 }
end
