class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      
      # user_data
      t.string :first_name
      t.string :last_name
      t.datetime :birth_date
      t.integer :gender_status 
      # 1:male 2:female
      t.integer :marital_status
      t.integer :number_of_child
      t.text  :street_address
      t.string  :zip_code
      t.string  :city
      t.string  :country
      t.string  :handphone
      t.datetime :approved_on
      t.integer :rate
      t.integer :status
      # employment_data
      t.string  :company_name
      t.string  :position
      t.decimal :salary_amount , :default        => 0,  :precision => 14, :scale => 2
      t.integer :number_of_years_in_company
      t.text    :company_street_address
      t.string  :company_zip_code
      t.string  :company_city
      t.string  :company_country
      t.string  :company_phone
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
