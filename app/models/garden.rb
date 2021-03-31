class Garden < ApplicationRecord
  BIO = %w[desert jungle winter volcano]
  has_many :plants, dependent: :destroy

  validates :name, :city, :bio, :image_url, presence: true
  validates :bio, inclusion: {in: BIO}

end
