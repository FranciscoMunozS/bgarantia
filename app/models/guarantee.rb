class Guarantee < ApplicationRecord
  searchkick
  belongs_to :user

  validates :state, presence: true, :on => :update
  validates :devolution_number, presence: true, :on => :update
  validates :devolution_date, presence: true, :on => :update
  validates :devolution_return, presence: true, :on => :update
  validates :sectorialist_devolution, presence: true, :on => :update
  validates :technical_unit, presence: true, :on => :update
  validates :income_number, presence: true
  validates :income_date, presence: true
  validates :income_applicant, presence: true
  validates :borrower_name, presence: true
  validates :borrower_id, presence: true
  validates :bank_name, presence: true
  validates :value_guarantee, presence: true
  validates :currency_guarantee, presence: true
  validates :due_date, presence: true
  validates :bail, presence: true
  validates :detail, presence: true
  validates :bip, presence: true
  validates :email, presence: true
end
