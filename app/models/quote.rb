class Quote < ApplicationRecord
  validates :order, numericality: { only_integer: true }, presence: true, uniqueness: true, inclusion: { in: 0..6 }
  validates :author_name, length: { in: 3..30 }
end
