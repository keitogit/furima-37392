class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # has_one :buying_history
  has_one_attached :image
  belongs_to :user

  belongs_to :category
  belongs_to :prefecture
  belongs_to :status
  belongs_to :shipping_cost
  belongs_to :shipping_day

  validates :name,                presence: true
  validates :price,               presence: true,
                                  numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  validates :description,         presence: true
  validates :image,               presence: true

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :prefecture_id
    validates :status_id
    validates :shipping_cost_id
    validates :shipping_day_id
  end
end
