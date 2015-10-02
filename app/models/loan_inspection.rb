class LoanInspection < ActiveRecord::Base
  belongs_to :loan_request
  
  def create_object(params)
    new_object = self.new
    new_object.loan_request_id = params[:loan_request_id]
    new_object.ktp_status = params[:ktp_status]
    new_object.ktp_desc = params[:ktp_desc]
    new_object.kartu_keluarga_status = params[:kartu_keluarga_status]
    new_object.kartu_keluarga_desc = params[:kartu_keluarga_desc]
    new_object.bills_status = params[:bills_status]
    new_object.bills_desc = params[:bills_desc]
    new_object.credit_card_bills_status = params[:credit_card_bills_status]
    new_object.credit_card_bills_desc = params[:credit_card_bills_desc]
    new_object.salary_verification_status = params[:salary_verification_status]
    new_object.salary_verification_desc = params[:salary_verification_desc]
    new_object.other_status = params[:other_status]
    new_object.other_desc = params[:other_desc]
    if new_object.save
      loan_request = LoanRequest.find_by_id(loan_request_id)
      loan_request.ktp_status = new_object.ktp_status
      loan_request.kartu_keluarga_status = new_object.kartu_keluarga_status
      loan_request.bills_status = new_object.bills_status
      loan_request.credit_card_bills_status = new_object.credit_card_bills_status
      loan_request.salary_verification_status = new_object.salary_verification_status
      loan_request.other_status = new_object.other_status
      loan_request.save
    end
  end

end
