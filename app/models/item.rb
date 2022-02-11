class Item < ApplicationRecord
  has_one :buying_history
  has_one_attached :image
  belongs_to :products

  validates :name,                presence: true
  validates :price,               presence: true
  validates :description,         presence: true
  validates :status_id,           presence: true
  validates :shipping_cost_id,    presence: true
  validates :shipping_day_id,     presence: true
  validates :prefecture_id,       presence: true
  validates :category_id,         presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :user,                presence: true
end
