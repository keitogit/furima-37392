class Item < ApplicationRecord
  belong_to :user
  has_one :buying_history
  has_one_attached :image
end
