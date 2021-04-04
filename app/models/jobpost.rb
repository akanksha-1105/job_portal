class Jobpost < ApplicationRecord
 # belongs to :users

  validates :title, presence: true
  validates :company, presence: true
  validates :description, presence: true, length: { maximum: 100 }
  validates :salary, presence: true
end
