class UserController < ApplicationController

  def index
    @users = User.all
  end
      
  def give
    @user = User.find(params[:id])
  end
      
  def add
    @user = User.new
  end
      
  def creation
    @user = User.new(user_params)
      
           if @user.save
             redirect_to @user
           else
             render :add, status: :unprocessable_entity
          end
        end
      
        def edit
          @user = User.find(params[:id])
        end
        
        def update
          @user = User.find(params[:id])
      
          if @user.update(user_params)
            redirect_to @user
          else
            render :edit, status: :unprocessable_entity
          end
        end
      
        def destroy
          @user = User.find(params[:id])
          @user.destroy
      
          redirect_to root_path, status: :see_other
        end
      
        private
          def user_params
            params.require(:user).permit(:name, :email, :age, :password )
          end
end
