class Admin::SupervisorsController < Admin::BaseController

  def index
    @supervisors = USers.role@supervisors.page(params[:page])
  end

  def search
    @user = User.find_by(email: params[:email])

    respond_to do |format|
      if @user
        @supervisor = supervisor.find_or_initialize_by(user: @user)
        format.js
      else
        format.js { render "user_not_found" }
      end
    end
  end

  def create
    @supervisor.user_id = params[:user_id]
    @supervisor.save

    redirect_to admin_supervisors_path
  end

  def destroy
    @supervisor.destroy
    redirect_to admin_supervisors_path
  end
end