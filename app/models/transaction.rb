class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :price_in_cents,
            :price_in_diamonds,
            :transaction_type,
            presence: true

  enum transaction_type: %i[purchases withdrawals], _default: 'purchases'
end
