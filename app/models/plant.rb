class Plant < ApplicationRecord

  SIZE = %w[small medium large]
  belongs_to :garden

  validates :name, :size, :image_url, presence: true
  validates :size, inclusion: {in: SIZE}

end
