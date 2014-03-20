class Checkout < ActiveRecord::Base
  belongs_to :book
  has_one :reader
  validates :book_id, presence: true
end
