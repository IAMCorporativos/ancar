class Validator::ApprovalController < Validator::BaseController
  has_filters

# class_methods do

  def index
    @approvals = laod_filtered_approvals
  end

  def unit_filters
    current_user.auth_organizations
  end

  private

    def has_filters(valid_filters, *args)
      super
      valid_filters = %w(caca culo pedo pis)
    end

    def load_filtered_approvals
      Approval.organization(params[:filter]).page(params[:page])
    end

end