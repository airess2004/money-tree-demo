class Administrator::UserListController < AdministratorController
  def index
  end
  
  def list
    @object = User.where(:status => APPROVAL_STATUS[:pending]).order("created_at DESC")
  end
  
  def show
    @object = User.find_by_id(params[:id])
  end
  
end
