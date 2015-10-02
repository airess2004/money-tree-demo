class CreateLoanRequests < ActiveRecord::Migration
  def change
    create_table :loan_requests do |t|
      t.integer :user_id
      t.decimal :loan_amount , :default        => 0,  :precision => 14, :scale => 2
      t.integer :purpose
      t.integer :status
      t.string :ktp_url
      t.boolean  :ktp_status, :default => false
      t.string :kartu_keluarga_url
      t.boolean :kartu_keluarga_status , :default => false
      t.string  :bills_url 
      t.boolean :bills_status, :default => false
      t.string  :credit_card_bills_url
      t.boolean :credit_card_bills_status , :default => false
      t.string :salary_verification_url 
      t.boolean :salary_verification_status , :default => false
      t.string :other_url
      t.boolean :other_status, :default => false
      t.timestamps null: false
    end
  end
end
