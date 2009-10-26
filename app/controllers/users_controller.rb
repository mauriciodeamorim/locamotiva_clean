class UsersController < ApplicationController
# before_filter :require_no_user, :only => [:new, :create]
 before_filter :require_user, :only => [:show, :edit, :update, :new, :create] 

 def new  
     @user = User.new  
 end  
   
 def create  
   @user = User.new(params[:user])  
   if @user.save  
     flash[:notice] = "Usuário cadastrado com sucesso."  
     redirect_back_or_default account_url 
   else  
     render :action => 'new'  
   end  
 end
end
