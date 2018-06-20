class Pizza < ApplicationRecord
  belongs_to :crust
  belongs_to :recipe
  belongs_to :user
end
