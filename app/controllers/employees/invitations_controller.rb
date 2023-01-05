class Employees::InvitationsController < Devise::InvitationsController
    before_action :configure_permitted_parameters

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:invite, keys: [:name, :master_employee_role_id, :username,:designation,:division_id])
    end
end
