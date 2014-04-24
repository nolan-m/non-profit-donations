class Donation < ActiveRecord::Base
  validates :donation_amt, :presence => true
  belongs_to :user
  belongs_to :company


end
