class Payment < ApplicationRecord
  belongs_to: topup
  belongs_to: user
end
