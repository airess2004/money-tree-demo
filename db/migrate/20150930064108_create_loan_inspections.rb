class CreateLoanInspections < ActiveRecord::Migration
  def change
    create_table :loan_inspections do |t|
      t.integer :loan_request_id
      t.integer :number_inspection
      t.boolean :ktp_status , :default => false
      t.text :ktp_desc
      t.boolean :kartu_keluarga_status , :default => false
      t.text :kartu_keluarga_desc
      t.boolean :bills_status , :default => false
      t.text :bills_desc
      t.boolean :credit_card_bills_status , :default => false
      t.text :credit_card_bills_desc
      t.boolean :salary_verification_status , :default => false
      t.text :salary_verification_desc
      t.boolean :other_status , :default => false
      t.text :other_desc
      t.timestamps null: false
    end
  end
end
