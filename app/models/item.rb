class Item < ActiveRecord::Base
  belongs_to :list
  validates :name, :qty, :price, presence: true
  validates :qty, numericality: { only_integer: true }
  validates :price, numericality: true
end
