class PagesController < ApplicationController
    
    def step1
      @object = User.new
    end
    
    def save_to_session
      session[:loan_amount] = params[:loan][4,params[:loan].size].gsub(/,/, '').to_s if params[:loan]
      session[:loan_for] = params[:purpose] if params[:purpose]
      redirect_to '/pages/login_facebook'
    end
    
    def create_user
      @object = User.create_object(params[:user])
      respond_to do |format|
        if @object.errors.size == 0
          format.html { redirect_to '/pages/step2', notice: 'Listing was successfully created.' }
          format.json { render :show, status: :created, location: @object }
        else
          format.html { render :step1 }
          format.json { render json: @listing.errors, status: :unprocessable_entity }
        end
      end
      # @object = LoanRequest.create_object( params[:loan_request])
      # respond_to do |format|
      #   if @listing.save
      #     format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
      #     format.json { render :show, status: :created, location: @listing }
      #   else
      #     format.html { render :new }
      #     format.json { render json: @listing.errors, status: :unprocessable_entity }
      #   end
      # end
    end
    
    # private
    # def listing_params
    #   params.require(:listing).permit(:name, :description, :price, :image)
    # end
    
end
