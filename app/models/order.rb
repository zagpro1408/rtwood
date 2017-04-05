class Order < ApplicationRecord
  validates :company, :email, :text, presence: true
end
