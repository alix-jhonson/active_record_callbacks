class Order < ActiveRecord::Base
  before_save :normalize_card_number, if: :paid_with_card?
end
