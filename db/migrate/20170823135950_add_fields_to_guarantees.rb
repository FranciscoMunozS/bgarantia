class AddFieldsToGuarantees < ActiveRecord::Migration[5.0]
  def change
    add_column :guarantees, :state, :string
    add_column :guarantees, :devolution_number, :string
    add_column :guarantees, :devolution_date, :date
    add_column :guarantees, :devolution_return, :string
    add_column :guarantees, :sectorialist_devolution, :string
    add_column :guarantees, :technical_unit, :string
  end
end
