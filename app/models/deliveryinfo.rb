class Deliveryinfo < ApplicationRecord
  belongs_to :order

  validates :name, presence: true
  validates :address1, presence: true
  validates :address2, presence: true
  validates :phone, numericality: { only_integer: true }, presence: true

end
