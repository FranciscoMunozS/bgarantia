class CreateGuarantees < ActiveRecord::Migration[5.0]
  def change
    create_table :guarantees do |t|
      t.string :income_number
      t.date :income_date
      t.string :income_applicant
      t.string :borrower_name
      t.string :borrower_id
      t.string :bank_name
      t.string :value_guarantee
      t.string :currency_guarantee
      t.date :due_date
      t.string :bail
      t.string :detail
      t.string :bip
      t.string :email
      t.text :observation

      t.timestamps
    end
  end
end
