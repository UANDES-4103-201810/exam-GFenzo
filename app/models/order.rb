class Order < ApplicationRecord
  belongs_to :user

  validates :payment, presence: true
end
