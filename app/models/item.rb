class Item < ApplicationRecord
  belong_to :user
  has_one :buying_history
end
