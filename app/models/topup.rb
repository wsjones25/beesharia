class Topup < ApplicationRecord
  belongs_to :user
  belongs_to :payment
  monetize :amount_cents
end
