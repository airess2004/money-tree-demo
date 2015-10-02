class CreateLegalInspections < ActiveRecord::Migration
  def change
    create_table :legal_inspections do |t|
      t.integer :loan_request_id
      t.integer :number_inspection
      t.string :document_status
      t.string :document_name
      t.boolean :document_status , :default => false
      t.text :document_desc
      t.timestamps null: false
    end
  end
end
