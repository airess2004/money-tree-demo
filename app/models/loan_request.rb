class LoanRequest < ActiveRecord::Base
  belongs_to :user
  
  def create_object(params)
    new_object = self.new
    new_object.user_id = params[:user_id]
    new_object.loan_amount = BigDecimal( params[:loan_amount] || '0')
    new_object.purpose = params[:purpose]
    new_object.status = LOAN_STATUS[:pending]
    new_object.save
    return new_object
  end
  
  def upload_ktp(params)
    self.ktp_url = params[:ktp_url]
    self.save
    return self
  end
  
  def upload_kartu_keluarga(params)
    self.kartu_keluarga_url = params[:kartu_keluarga_url]
    self.save
    return self
  end
  
  def upload_bills(params)
    self.bills_url = params[:bills_url]
    self.save
    return self
  end
  
  def upload_credit_card_bills(params)
    self.credit_card_bills_url = params[:credit_card_bills_url]
    self.save
    return self
  end
  
  def upload_salary_verification(params)
    self.salary_verification_url = params[:salary_verification_url]
    self.save
    return self
  end
  
  def upload_other(params)
    self.other_url = params[:other_url]
    self.save
    return self
  end
    
end
