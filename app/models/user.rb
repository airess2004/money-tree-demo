class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        # , :confirmable
  validates_presence_of :handphone,
                        :email,
                        :first_name,
                        :last_name,
                        :birth_date,
                        :marital_status,
                        :gender_status      
         
  def self.create_object(params)
    new_object = self.new
    new_object.email = params[:email]
    new_object.password = 1234567890
    new_object.first_name = params[:first_name]
    new_object.last_name = params[:last_name]
    new_object.gender_status = params[:gender_status]
    new_object.marital_status = params[:marital_status]
    new_object.street_address = params[:street_address]
    new_object.birth_date = params[:birth_date]
    new_object.handphone = params[:handphone]
    new_object.status = APPROVAL_STATUS[:pending]
    if new_object.save
    end
    return new_object
  end
  
  def update_object(params)
    self.first_name = params[:first_name]
    self.last_name = params[:last_name]
    self.gender_status = params[:gender_status]
    self.marital_status = params[:marital_status]
    self.street_address = params[:street_address]
    self.birth_date = params[:birth_date]
    self.handphone = params[:handphone]
    self.status = APPROVAL_STATUS[:pending]
    if self.save
    end
    return self
  end
  
  
  def approve
    self.status = APPROVAL_STATUS[:approved]
    self.save
    return self
  end
  
  def reject
    self.status = APPROVAL_STATUS[:rejected]
    self.save
    return self
  end
  
end
