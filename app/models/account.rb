class Account < ApplicationRecord
  belongs_to :user
  before_create :calculate

  def calculate
    self.balance = self.previous_balance + self.amount - self.discount
  end
end
