class House < ActiveRecord::Base

	belongs_to :user

  validates :size, presence: true
  validates :location, presence: true
  # validates :content, precense: true
  validates :address, presence: true, uniqueness: true

end
