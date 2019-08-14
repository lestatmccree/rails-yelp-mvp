class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: {
    in: %w[Chinese Italian Japanese French Belgian],
    message: 'This is not a valid option.'
  }
end
