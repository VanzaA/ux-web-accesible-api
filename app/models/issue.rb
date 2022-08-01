class Issue < ApplicationRecord
  validates :email, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :category, presence: true
end
